*** Settings ***



*** Variables ***
${value101} = 100

*** Test Cases ***
Testing a true If statement
    run keyword if    ${value101} > 50    keyword 1
    01016499461