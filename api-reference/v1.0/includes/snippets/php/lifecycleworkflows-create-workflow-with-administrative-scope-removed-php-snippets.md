---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\IdentityGovernance\LifecycleWorkflows\Workflows\Item\MicrosoftGraphIdentityGovernanceCreateNewVersion\CreateNewVersionPostRequestBody;
use Microsoft\Graph\Generated\Models\IdentityGovernance\Workflow;
use Microsoft\Graph\Generated\Models\IdentityGovernance\LifecycleWorkflowCategory;
use Microsoft\Graph\Generated\Models\IdentityGovernance\Task;
use Microsoft\Graph\Generated\Models\IdentityGovernance\LifecycleTaskCategory;
use Microsoft\Graph\Generated\Models\KeyValuePair;
use Microsoft\Graph\Generated\Models\IdentityGovernance\OnDemandExecutionOnly;
use Microsoft\Graph\Generated\Models\DirectoryObject;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new CreateNewVersionPostRequestBody();
$workflow = new Workflow();
$workflow->setCategory(new LifecycleWorkflowCategory('mover'));
$workflow->setDisplayName('Remove existing target scope of a workflow');
$workflow->setDescription('On-demand removal of the target scope of a workflow.');
$tasksTask1 = new Task();
$tasksTask1->setCategory(new LifecycleTaskCategory('mover'));
$tasksTask1->setContinueOnError(false);
$tasksTask1->setDescription('Send email to notify user\'s manager of user move');
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
$argumentsKeyValuePair1->setValue('5fa668df-a7b0-43fe-828d-48f7a1f7ca44');
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
$workflow->setAdministrationScopeTargets([]);
$requestBody->setWorkflow($workflow);

$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernanceCreateNewVersion()->post($requestBody)->wait();

```