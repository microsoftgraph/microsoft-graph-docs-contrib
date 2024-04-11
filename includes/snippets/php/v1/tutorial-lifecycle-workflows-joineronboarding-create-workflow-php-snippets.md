---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Workflow;
use Microsoft\Graph\Generated\Models\TriggerAndScopeBasedConditions;
use Microsoft\Graph\Generated\Models\RuleBasedSubjectSet;
use Microsoft\Graph\Generated\Models\TimeBasedAttributeTrigger;
use Microsoft\Graph\Generated\Models\Task;
use Microsoft\Graph\Generated\Models\KeyValuePair;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Workflow();
$requestBody->setDisplayName('Onboard pre-hire employee');
$requestBody->setDescription('Configure pre-hire tasks for onboarding employees before their first day');
$requestBody->setIsEnabled(true);
$requestBody->setIsSchedulingEnabled(false);
$executionConditions = new TriggerAndScopeBasedConditions();
$executionConditions->setOdataType('microsoft.graph.identityGovernance.triggerAndScopeBasedConditions');
$executionConditionsScope = new RuleBasedSubjectSet();
$executionConditionsScope->setOdataType('microsoft.graph.identityGovernance.ruleBasedSubjectSet');
$executionConditionsScope->setRule('(department eq \'Sales\')');
$executionConditions->setScope($executionConditionsScope);
$executionConditionsTrigger = new TimeBasedAttributeTrigger();
$executionConditionsTrigger->setOdataType('microsoft.graph.identityGovernance.timeBasedAttributeTrigger');
$executionConditionsTrigger->setTimeBasedAttribute(new WorkflowTriggerTimeBasedAttribute('employeeHireDate'));
$executionConditionsTrigger->setOffsetInDays(-2);
$executionConditions->setTrigger($executionConditionsTrigger);
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


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->post($requestBody)->wait();

```