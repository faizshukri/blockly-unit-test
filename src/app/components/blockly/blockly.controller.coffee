angular.module "app"
  .controller "BlocklyCtrl", ($filter) ->

    this.classes = []

    this.selectedClass = {}
    this.selectedMethod = {}
    this.selectedTest = {}

    this.createClass = ->
      class_name = prompt "Class names: "
      if _.isEmpty class_name
        return
      this.selectedClass = { name: class_name, methods: []}
      this.classes.push this.selectedClass

    this.createMethod = ->
      method_name = prompt "Method name: "
      if _.isEmpty method_name
        return
      # Assign method to selected method
      this.selectedMethod = { name: method_name, tests: [] }
      this.selectedTest = { name: _.snakeCase(method_name + 'Test' + ( this.selectedMethod.tests.length + 1 ) ) }
      this.selectedMethod.tests.push this.selectedTest
      # Add the new method to class's method
      index = _.findIndex this.classes, this.selectedClass
      this.classes[index].methods.push this.selectedMethod

    this.createTest = ->
      this.selectedTest = { name: _.snakeCase(this.selectedMethod.name + 'Test' + ( this.selectedMethod.tests.length + 1 ) ) }
      class_index = _.findIndex this.classes, this.selectedClass
      method_index = _.findIndex this.classes[class_index].methods, this.selectedMethod
      this.classes[class_index].methods[method_index].tests.push this.selectedTest

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
