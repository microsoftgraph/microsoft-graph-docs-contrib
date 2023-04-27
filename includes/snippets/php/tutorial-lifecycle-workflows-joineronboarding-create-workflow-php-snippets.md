---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Workflow();
$requestBody->setDisplayName('Onboard pre-hire employee');

$requestBody->setDescription('Configure pre-hire tasks for onboarding employees before their first day');

$requestBody->setIsEnabled(true);

$requestBody->setIsSchedulingEnabled(false);

$executionConditions = new WorkflowExecutionConditions();
$executionConditions->set@odatatype('microsoft.graph.identityGovernance.triggerAndScopeBasedConditions');

$additionalData = [
		'scope' => $executionConditions = new Scope();
$		executionConditions->set@odatatype('microsoft.graph.identityGovernance.ruleBasedSubjectSet');

$		executionConditions->setRule('(department eq \'Sales\')');


$executionConditions->setScope($scope);

		'trigger' => $executionConditions = new Trigger();
$		executionConditions->set@odatatype('microsoft.graph.identityGovernance.timeBasedAttributeTrigger');

$		executionConditions->setTimeBasedAttribute('employeeHireDate');

		$executionConditions->setOffsetInDays(-2);


$executionConditions->setTrigger($trigger);

];
$executionConditions->setAdditionalData($additionalData);



$requestBody->setExecutionConditions($executionConditions);
$tasksTask1 = new Task();
$tasksTask1->setIsEnabled(true);

$tasksTask1->setCategory(new LifecycleTaskCategory('joiner'));

$tasksTask1->setTaskDefinitionId('1b555e50-7f65-41d5-b514-5894a026d10d');

$tasksTask1->setDisplayName('Generate TAP And Send Email');

$tasksTask1->setDescription('Generate Temporary Access Pass and send via email to user\'s manager');

$argumentsKeyValuePair1 = new KeyValuePair();
$argumentsKeyValuePair1->setName('tapLifetimeMinutes');

$argumentsKeyValuePair1->setValue('480');


$argumentsArray []= $argumentsKeyValuePair1;
$argumentsKeyValuePair2 = new KeyValuePair();
$argumentsKeyValuePair2->setName('tapIsUsableOnce');

$argumentsKeyValuePair2->setValue('true');


$argumentsArray []= $argumentsKeyValuePair2;
$tasksTask1->setArguments($argumentsArray);



$tasksArray []= $tasksTask1;
$requestBody->setTasks($tasksArray);




$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->post($requestBody);


```