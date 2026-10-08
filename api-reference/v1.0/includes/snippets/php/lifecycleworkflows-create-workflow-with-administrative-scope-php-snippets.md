---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\IdentityGovernance\Workflow;
use Microsoft\Graph\Generated\Models\IdentityGovernance\LifecycleWorkflowCategory;
use Microsoft\Graph\Generated\Models\IdentityGovernance\Task;
use Microsoft\Graph\Generated\Models\KeyValuePair;
use Microsoft\Graph\Generated\Models\IdentityGovernance\LifecycleTaskCategory;
use Microsoft\Graph\Generated\Models\IdentityGovernance\OnDemandExecutionOnly;
use Microsoft\Graph\Generated\Models\DirectoryObject;
use Microsoft\Graph\Generated\Models\AdministrativeUnit;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Workflow();
$requestBody->setCategory(new LifecycleWorkflowCategory('mover'));
$requestBody->setDisplayName('On Demand workflow move');
$requestBody->setDescription('Execute real-time tasks for employee job changes');
$tasksTask1 = new Task();
$tasksTask1->setArguments([	]);
$tasksTask1->setDescription('Send email to notify user\'s manager of user move');
$tasksTask1->setDisplayName('Send email to notify manager of user move');
$tasksTask1->setIsEnabled(true);
$tasksTask1->setContinueOnError(false);
$tasksTask1->setTaskDefinitionId('aab41899-9972-422a-9d97-f626014578b7');
$tasksTask1->setCategory(new LifecycleTaskCategory('mover'));
$tasksArray []= $tasksTask1;
$requestBody->setTasks($tasksArray);

$executionConditions = new OnDemandExecutionOnly();
$executionConditions->setOdataType('#microsoft.graph.identityGovernance.onDemandExecutionOnly');
$requestBody->setExecutionConditions($executionConditions);
$requestBody->setIsEnabled(true);
$requestBody->setIsSchedulingEnabled(false);
$administrationScopeTargetsDirectoryObject1 = new AdministrativeUnit();
$administrationScopeTargetsDirectoryObject1->setOdataType('#microsoft.graph.administrativeUnit');
$administrationScopeTargetsDirectoryObject1->setId('4f9dc456-0574-4122-9e55-8b4cc494b27d');
$administrationScopeTargetsArray []= $administrationScopeTargetsDirectoryObject1;
$administrationScopeTargetsDirectoryObject2 = new AdministrativeUnit();
$administrationScopeTargetsDirectoryObject2->setOdataType('#microsoft.graph.administrativeUnit');
$administrationScopeTargetsDirectoryObject2->setId('2c987843-e9b1-4b1a-b924-ff1d2a9b054d');
$administrationScopeTargetsArray []= $administrationScopeTargetsDirectoryObject2;
$requestBody->setAdministrationScopeTargets($administrationScopeTargetsArray);


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->post($requestBody)->wait();

```