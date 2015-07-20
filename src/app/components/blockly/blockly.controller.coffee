angular.module "app"
  .controller "BlocklyCtrl", ($filter, $scope) ->

    this.classes = []

    this.selectedClass = {}
    this.selectedMethod = {}
    this.selectedTest = {}

    this.createClass = ->
      class_name = prompt "Class names: "
      if _.isEmpty class_name
        return

      # Get id of current selected, and change it to false
      class_index = _.findIndex this.classes, {selected: true}

      if class_index > -1
        this.unselectSelected this.classes, this.classes

      this.selectedClass = { name: class_name, methods: [], tests: [], selected: true }

      # Create new class and mark it as selected
      this.classes.push this.selectedClass

    this.createMethod = ->
      method_name = prompt "Method name: "
      if _.isEmpty method_name
        return

      # Get index of selected class
      class_index = _.findIndex this.classes, {selected: true}

      if class_index > -1
        # Deselect selected method in the selected class
        this.unselectSelected this.classes, this.classes[class_index].methods, class_index + '.'

      # Set selected method
      this.selectedMethod = { name: method_name, selected: true }
      # Add method to the class
      this.classes[class_index].methods.push this.selectedMethod

    this.createTest = ->
      test_name = prompt "Test method: "
      if _.isEmpty test_name
        return

      # Get index of selected class
      class_index = _.findIndex this.classes, {selected: true}

      if class_index > -1
        # Deselect selected test in the selected class
        this.unselectSelected this.classes, this.classes[class_index].tests, class_index + '.'

      # Set selected test
      this.selectedTest = { name: test_name, selected: true }
      # Add test to the class
      this.classes[class_index].tests.push this.selectedTest

    this.unselectSelected = (target, search = [], base = '') ->
      current_selected = _.findIndex(search, {selected: true})
      _.set(target, base + current_selected + '.selected', false)

    this.updateClass = (class_name) ->
      this.unselectSelected this.classes, this.classes
      class_index = _.findIndex( this.classes, {name: class_name.name} )
      this.classes[ class_index ].selected = true

    this.getClassIndex = ->
      _.findIndex this.classes, this.selectedClass

    this.getMethodIndex = ->
      _.findIndex this.classes[this.getClassIndex()].methods, this.selectedMethod

    $scope.$watch(angular.bind this, () -> this.selectedClass
    (newVal, oldVal) ->
      this.selectedMethod = { }
      this.selectedTest = { }
    )

    this.blocks =
      Assert: [
        "assert_true",
        "assert_false",
        "assert_equals",
        "assert_null",
        "assert_notnull"
      ],
      Colour: [
        "colour_picker",
        "colour_random",
        "colour_rgb",
        "colour_blend"
      ],
      Control: [
        "controls_repeat",
        "controls_repeat_ext",
        "controls_whileUntil",
        "controls_for",
        "controls_forEach",
        "controls_flow_statements"
      ],
      List: [
        "lists_create_empty",
        "lists_create_with",
        "lists_repeat",
        "lists_length",
        "lists_isEmpty",
        "lists_indexOf",
        "lists_getIndex",
        "lists_setIndex",
        "lists_getSublist",
        "lists_split",
      ],
      Logic: [
        "controls_if",
        "logic_compare",
        "logic_operation",
        "logic_negate",
        "logic_boolean",
        "logic_null",
        "logic_ternary"
      ],
      Math: [
        "math_number",
        "math_arithmetic",
        "math_single",
        "math_constant",
        "math_number_property",
        "math_change",
        "math_round",
        "math_trig",
        "math_on_list",
        "math_modulo",
        "math_constrain",
        "math_random_int",
        "math_random_float"
      ],
      Text: [
        "text",
        "text_join",
        "text_append",
        "text_length",
        "text_isEmpty",
        "text_indexOf",
        "text_charAt",
        "text_getSubstring",
        "text_changeCase",
        "text_trim",
        "text_print",
        "text_prompt",
        "text_prompt_ext",
      ],
