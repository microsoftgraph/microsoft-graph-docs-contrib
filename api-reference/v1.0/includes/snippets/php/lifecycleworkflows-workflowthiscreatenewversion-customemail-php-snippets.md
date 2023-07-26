---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CreateNewVersionPostRequestBody();
$additionalData = [
		'category' => 'joiner', 
		'description' => 'Configure new hire tasks for onboarding employees on their first day', 
		'displayName' => 'custom email marketing API test', 
		'isEnabled' => true,
		'isSchedulingEnabled' => false,
		'executionConditions' => $requestBody = new ExecutionConditions();
$		requestBody->set@odatatype('#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions');

$scope = new Scope();
$		scope->set@odatatype('#microsoft.graph.identityGovernance.ruleBasedSubjectSet');

$		scope->setRule('(department eq \'Marketing\')');


$requestBody->setScope($scope);
$trigger = new Trigger();
$		trigger->set@odatatype('#microsoft.graph.identityGovernance.timeBasedAttributeTrigger');

$		trigger->setTimeBasedAttribute('employeeHireDate');

		$trigger->setOffsetInDays(0);


$requestBody->setTrigger($trigger);

$requestBody->setExecutionConditions($executionConditions);

		'tasks' => $tasks1 = new ();
		$tasks1->setContinueOnError(false);

$		tasks1->setDescription('Enable user account in the directory');

$		tasks1->setDisplayName('Enable User Account');

		$tasks1->setIsEnabled(true);

$		tasks1->setTaskDefinitionId('6fc52c9d-398b-4305-9763-15f42c1676fc');

$tasks1->setArguments([]);


$tasksArray []= $tasks1;
$tasks2 = new ();
	$tasks2->setContinueOnError(false);

$	tasks2->setDescription('Send welcome email to new hire');

$	tasks2->setDisplayName('Send Welcome Email');

	$tasks2->setIsEnabled(true);

$	tasks2->setTaskDefinitionId('70b29d51-b59a-4773-9280-8841dfd3f2ea');

$arguments1 = new ();
$	arguments1->setName('cc');

$	arguments1->setValue('1baa57fa-3c4e-4526-ba5a-db47a9df95f0');


$argumentsArray []= $arguments1;
$arguments2 = new ();
$	arguments2->setName('customSubject');

$	arguments2->setValue('Welcome to the organization {{userDisplayName}}!');


$argumentsArray []= $arguments2;
$arguments3 = new ();
$	arguments3->setName('customBody');

$	arguments3->setValue('Welcome to our organization {{userGivenName}}!');


$argumentsArray []= $arguments3;
$arguments4 = new ();
$	arguments4->setName('locale');

$	arguments4->setValue('en-us');


$argumentsArray []= $arguments4;
$tasks2->setArguments($argumentsArray);



$tasksArray []= $tasks2;
$requestBody->setTasks($tasksArray);


];
$requestBody->setAdditionalData($additionalData);




$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernanceCreateNewVersion()->post($requestBody);


```