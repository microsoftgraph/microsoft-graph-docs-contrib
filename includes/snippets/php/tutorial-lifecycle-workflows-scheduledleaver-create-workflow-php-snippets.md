---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Workflow();
$requestBody->setCategory(new LifecycleWorkflowCategory('leaver'));

$requestBody->setDisplayName('Post-Offboarding of an employee');

$requestBody->setDescription('Configure offboarding tasks for employees after their last day of work');

$requestBody->setIsEnabled(true);

$requestBody->setIsSchedulingEnabled(false);

$executionConditions = new WorkflowExecutionConditions();
$executionConditions->set@odatatype('#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions');

$additionalData = [
		'scope' => $executionConditions = new Scope();
$		executionConditions->set@odatatype('#microsoft.graph.identityGovernance.ruleBasedSubjectSet');

$		executionConditions->setRule('department eq \'Marketing\'');


$executionConditions->setScope($scope);

		'trigger' => $executionConditions = new Trigger();
$		executionConditions->set@odatatype('#microsoft.graph.identityGovernance.timeBasedAttributeTrigger');

$		executionConditions->setTimeBasedAttribute('employeeLeaveDateTime');

		$executionConditions->setOffsetInDays(7);


$executionConditions->setTrigger($trigger);

];
$executionConditions->setAdditionalData($additionalData);



$requestBody->setExecutionConditions($executionConditions);
$tasksTask1 = new Task();
$tasksTask1->setCategory(new LifecycleTaskCategory('leaver'));

$tasksTask1->setContinueOnError(false);

$tasksTask1->setDescription('Remove all licenses assigned to the user');

$tasksTask1->setDisplayName('Remove all licenses for user');

$tasksTask1->setExecutionSequence(1);

$tasksTask1->setIsEnabled(true);

$tasksTask1->setTaskDefinitionId('8fa97d28-3e52-4985-b3a9-a1126f9b8b4e');

$tasksTask1->setArguments([]);


$tasksArray []= $tasksTask1;
$tasksTask2 = new Task();
$tasksTask2->setCategory(new LifecycleTaskCategory('leaver'));

$tasksTask2->setContinueOnError(false);

$tasksTask2->setDescription('Remove user from all Teams memberships');

$tasksTask2->setDisplayName('Remove user from all Teams');

$tasksTask2->setExecutionSequence(2);

$tasksTask2->setIsEnabled(true);

$tasksTask2->setTaskDefinitionId('81f7b200-2816-4b3b-8c5d-dc556f07b024');

$tasksTask2->setArguments([]);


$tasksArray []= $tasksTask2;
$tasksTask3 = new Task();
$tasksTask3->setCategory(new LifecycleTaskCategory('leaver'));

$tasksTask3->setContinueOnError(false);

$tasksTask3->setDescription('Delete user account in Azure AD');

$tasksTask3->setDisplayName('Delete User Account');

$tasksTask3->setExecutionSequence(3);

$tasksTask3->setIsEnabled(true);

$tasksTask3->setTaskDefinitionId('8d18588d-9ad3-4c0f-99d0-ec215f0e3dff');

$tasksTask3->setArguments([]);


$tasksArray []= $tasksTask3;
$requestBody->setTasks($tasksArray);




$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->post($requestBody);


```