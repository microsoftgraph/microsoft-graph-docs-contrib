---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Workflow();
$requestBody->setCategory(new LifecycleWorkflowCategory('joiner'));

$requestBody->setDescription('Configure new hire tasks for onboarding employees on their first day');

$requestBody->setDisplayName('custom email marketing API test');

$requestBody->setIsEnabled(true);

$requestBody->setIsSchedulingEnabled(false);

$executionConditions = new TriggerAndScopeBasedConditions();
$executionConditions->setOdataType('#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions');

$executionConditionsScope = new RuleBasedSubjectSet();
$executionConditionsScope->setOdataType('#microsoft.graph.identityGovernance.ruleBasedSubjectSet');

$executionConditionsScope->setRule('(department eq \'Marketing\')');


$executionConditions->setScope($executionConditionsScope);
$executionConditionsTrigger = new TimeBasedAttributeTrigger();
$executionConditionsTrigger->setOdataType('#microsoft.graph.identityGovernance.timeBasedAttributeTrigger');

$executionConditionsTrigger->setTimeBasedAttribute(new WorkflowTriggerTimeBasedAttribute('employeeHireDate'));

$executionConditionsTrigger->setOffsetInDays(0);


$executionConditions->setTrigger($executionConditionsTrigger);

$requestBody->setExecutionConditions($executionConditions);
$tasksTask1 = new Task();
$tasksTask1->setContinueOnError(false);

$tasksTask1->setDescription('Enable user account in the directory');

$tasksTask1->setDisplayName('Enable User Account');

$tasksTask1->setIsEnabled(true);

$tasksTask1->setTaskDefinitionId('6fc52c9d-398b-4305-9763-15f42c1676fc');

$tasksTask1->setArguments([	]);


$tasksArray []= $tasksTask1;
$tasksTask2 = new Task();
$tasksTask2->setContinueOnError(false);

$tasksTask2->setDescription('Send welcome email to new hire');

$tasksTask2->setDisplayName('Send Welcome Email');

$tasksTask2->setIsEnabled(true);

$tasksTask2->setTaskDefinitionId('70b29d51-b59a-4773-9280-8841dfd3f2ea');

$argumentsKeyValuePair1 = new KeyValuePair();
$argumentsKeyValuePair1->setName('cc');

$argumentsKeyValuePair1->setValue('1baa57fa-3c4e-4526-ba5a-db47a9df95f0');


$argumentsArray []= $argumentsKeyValuePair1;
$argumentsKeyValuePair2 = new KeyValuePair();
$argumentsKeyValuePair2->setName('customSubject');

$argumentsKeyValuePair2->setValue('Welcome to the organization {{userDisplayName}}!');


$argumentsArray []= $argumentsKeyValuePair2;
$argumentsKeyValuePair3 = new KeyValuePair();
$argumentsKeyValuePair3->setName('customBody');

$argumentsKeyValuePair3->setValue('Welcome to our organization {{userGivenName}}!');


$argumentsArray []= $argumentsKeyValuePair3;
$argumentsKeyValuePair4 = new KeyValuePair();
$argumentsKeyValuePair4->setName('locale');

$argumentsKeyValuePair4->setValue('en-us');


$argumentsArray []= $argumentsKeyValuePair4;
$tasksTask2->setArguments($argumentsArray);



$tasksArray []= $tasksTask2;
$requestBody->setTasks($tasksArray);




$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->post($requestBody);


```