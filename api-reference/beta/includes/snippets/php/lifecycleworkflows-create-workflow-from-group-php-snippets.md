---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Workflow;
use Microsoft\Graph\Generated\Models\TriggerAndScopeBasedConditions;
use Microsoft\Graph\Generated\Models\GroupBasedSubjectSet;
use Microsoft\Graph\Generated\Models\Group;
use Microsoft\Graph\Generated\Models\MembershipChangeTrigger;
use Microsoft\Graph\Generated\Models\Task;
use Microsoft\Graph\Generated\Models\KeyValuePair;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Workflow();
$requestBody->setCategory(new LifecycleWorkflowCategory('leaver'));
$requestBody->setDescription('Configure offboarding tasks for employees on their last day of work');
$requestBody->setDisplayName('Offboard an employee');
$requestBody->setIsEnabled(true);
$requestBody->setIsSchedulingEnabled(true);
$executionConditions = new TriggerAndScopeBasedConditions();
$executionConditions->setOdataType('#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions');
$executionConditionsScope = new GroupBasedSubjectSet();
$executionConditionsScope->setOdataType('#microsoft.graph.identityGovernance.groupBasedSubjectSet');
$groupsGroup1 = new Group();
$groupsGroup1->setId('668e7540-7f8e-4ca4-a207-b7dffbb6d038');
$groupsArray []= $groupsGroup1;
$executionConditionsScope->setGroups($groupsArray);

$executionConditions->setScope($executionConditionsScope);
$executionConditionsTrigger = new MembershipChangeTrigger();
$executionConditionsTrigger->setOdataType('#microsoft.graph.identityGovernance.membershipChangeTrigger');
$executionConditionsTrigger->setChangeType(new MembershipChangeType('remove'));
$executionConditions->setTrigger($executionConditionsTrigger);
$requestBody->setExecutionConditions($executionConditions);
$tasksTask1 = new Task();
$tasksTask1->setCategory(new LifecycleTaskCategory('leaver'));
$tasksTask1->setContinueOnError(false);
$tasksTask1->setDescription('Remove user from all Teams memberships');
$tasksTask1->setDisplayName('Remove user from all Teams');
$tasksTask1->setIsEnabled(true);
$tasksTask1->setTaskDefinitionId('81f7b200-2816-4b3b-8c5d-dc556f07b024');
$tasksTask1->setArguments([]);
$tasksArray []= $tasksTask1;
$tasksTask2 = new Task();
$tasksTask2->setCategory(new LifecycleTaskCategory('leaver'));
$tasksTask2->setContinueOnError(false);
$tasksTask2->setDescription('Remove user from all Azure AD groups memberships');
$tasksTask2->setDisplayName('Remove user from all groups');
$tasksTask2->setIsEnabled(true);
$tasksTask2->setTaskDefinitionId('b3a31406-2a15-4c9a-b25b-a658fa5f07fc');
$tasksTask2->setArguments([]);
$tasksArray []= $tasksTask2;
$requestBody->setTasks($tasksArray);


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->post($requestBody)->wait();

```