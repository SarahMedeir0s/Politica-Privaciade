grammar PoliticaPrivacide;

policy : OPEN_TAG 'Policy' CLOSE_TAG name target rule+ OPEN_TAG '/' 'Policy' CLOSE_TAG;
name : OPEN_TAG 'Name' CLOSE_TAG STRING OPEN_TAG '/' 'Name' CLOSE_TAG;
target : OPEN_TAG 'Target' CLOSE_TAG STRING OPEN_TAG '/' 'Target' CLOSE_TAG;
rule : OPEN_TAG 'Rule' CLOSE_TAG ruleName? condition+ action? OPEN_TAG '/' 'Rule' CLOSE_TAG;
ruleName : OPEN_TAG 'Name' CLOSE_TAG STRING OPEN_TAG '/' 'Name' CLOSE_TAG;
condition : OPEN_TAG 'Condition' CLOSE_TAG key value OPEN_TAG '/' 'Condition' CLOSE_TAG;
key : OPEN_TAG 'Key' CLOSE_TAG STRING OPEN_TAG '/' 'Key' CLOSE_TAG;
value : OPEN_TAG 'Value' CLOSE_TAG STRING OPEN_TAG '/' 'Value' CLOSE_TAG;
action : OPEN_TAG 'Action' CLOSE_TAG STRING OPEN_TAG '/' 'Action' CLOSE_TAG;

OPEN_TAG : '<';
CLOSE_TAG : '>';
STRING : ["][a-zA-Z0-9 \\/:._]+["];
SPACE : [ \t\r\n] -> skip;
