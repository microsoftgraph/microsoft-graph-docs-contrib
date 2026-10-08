---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\IdentityGovernance\LifecycleWorkflows\Workflows\Item\MicrosoftGraphIdentityGovernanceCreateNewVersion\CreateNewVersionPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\Workflow;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\LifecycleWorkflowCategory;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\Task;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\LifecycleTaskCategory;
use Microsoft\Graph\Beta\Generated\Models\KeyValuePair;
use Microsoft\Graph\Beta\Generated\Models\IdentityGovernance\OnDemandExecutionOnly;
use Microsoft\Graph\Beta\Generated\Models\DirectoryObject;
use Microsoft\Graph\Beta\Generated\Models\AdministrativeUnit;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateNewVersionPostRequestBody();
$workflow = new Workflow();
$workflow->setCategory(new LifecycleWorkflowCategory('mover'));
$workflow->setDisplayName('On Demand mover workflow');
$workflow->setDescription('Execute real-time tasks for employee job changes');
$tasksTask1 = new Task();
$tasksTask1->setCategory(new LifecycleTaskCategory('mover'));
$tasksTask1->setContinueOnError(false);
$tasksTask1->setDescription('Send email to notify user’s manager of user move');
$tasksTask1->setDisplayName('Send email to notify manager of user move');
$tasksTask1->setExecutionSequence(1);
$tasksTask1->setId('f09eb640-6c16-4f1a-8b48-6a295a307705');
$tasksTask1->setIsEnabled(true);
$tasksTask1->setTaskDefinitionId('aab41899-9972-422a-9d97-f626014578b7');
$tasksTask1->setArguments([	]);
$tasksArray []= $tasksTask1;
$tasksTask2 = new Task();
$argumentsKeyValuePair1 = new KeyValuePair();
$argumentsKeyValuePair1->setName('groupID');
$argumentsKeyValuePair1->setValue('8d1d1deb-2ef0-4f72-a460-729a1cc74e7e');
$argumentsArray []= $argumentsKeyValuePair1;
$tasksTask2->setArguments($argumentsArray);

$tasksTask2->setDescription('Add user to selected groups');
$tasksTask2->setDisplayName('Add user to groups');
$tasksTask2->setIsEnabled(true);
$tasksTask2->setContinueOnError(false);
$tasksTask2->setTaskDefinitionId('22085229-5809-45e8-97fd-270d28d66910');
$tasksTask2->setCategory(new LifecycleTaskCategory('joiner,leaver,mover'));
$tasksArray []= $tasksTask2;
$workflow->setTasks($tasksArray);

$workflowExecutionConditions = new OnDemandExecutionOnly();
$workflowExecutionConditions->setOdataType('#microsoft.graph.identityGovernance.onDemandExecutionOnly');
$workflow->setExecutionConditions($workflowExecutionConditions);
$workflow->setIsEnabled(true);
$workflow->setIsSchedulingEnabled(false);
$administrationScopeTargetsDirectoryObject1 = new AdministrativeUnit();
$administrationScopeTargetsDirectoryObject1->setOdataType('#microsoft.graph.administrativeUnit');
$administrationScopeTargetsDirectoryObject1->setId('2ae6f1b1-fcbf-4ad1-9f4f-8c5e48e364c7');
$administrationScopeTargetsArray []= $administrationScopeTargetsDirectoryObject1;
$workflow->setAdministrationScopeTargets($administrationScopeTargetsArray);

$requestBody->setWorkflow($workflow);

$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernanceCreateNewVersion()->post($requestBody)->wait();

```