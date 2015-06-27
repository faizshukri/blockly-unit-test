angular.module "app"
  .controller "BlocklyCtrl", ($scope) ->

    $scope.classes = {}

    $scope.blocks =
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
      Procedure: [
        "procedures_defreturn",
        "procedures_defnoreturn",
        "procedures_callnoreturn",
        "procedures_ifreturn"
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
      Variable: [
        "variables_get",
        "variables_set"
      ]
