Blockly.Blocks['assert_true'] = {
  init: function() {
    this.appendValueInput("VAR")
        .setCheck(null)
        .appendField("Assert that");
    this.appendDummyInput()
        .appendField("is TRUE");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(40);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['assert_false'] = {
  init: function() {
    this.appendValueInput("VAR")
        .setCheck(null)
        .appendField("Assert that");
    this.appendDummyInput()
        .appendField("is FALSE");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(40);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['assert_equals'] = {
  init: function() {
    this.appendValueInput("VAR")
        .setCheck(null)
        .appendField("Assert that");
    this.appendDummyInput()
        .appendField("is equals");
    this.appendValueInput("VAR2")
        .setCheck(null);
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(40);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['assert_null'] = {
  init: function() {
    this.appendValueInput("VAR")
        .setCheck(null)
        .appendField("Assert that");
    this.appendDummyInput()
        .appendField("is NULL");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(40);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};

Blockly.Blocks['assert_notnull'] = {
  init: function() {
    this.appendValueInput("VAR")
        .setCheck(null)
        .appendField("Assert that");
    this.appendDummyInput()
        .appendField("is NOT NULL");
    this.setPreviousStatement(true);
    this.setNextStatement(true);
    this.setColour(40);
    this.setTooltip('');
    this.setHelpUrl('http://www.example.com/');
  }
};