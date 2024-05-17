---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Workflow;
use Microsoft\Graph\Generated\Models\TriggerAndScopeBasedConditions;
use Microsoft\Graph\Generated\Models\RuleBasedSubjectSet;
use Microsoft\Graph\Generated\Models\AttributeChangeTrigger;
use Microsoft\Graph\Generated\Models\TriggerAttribute;
use Microsoft\Graph\Generated\Models\Task;
use Microsoft\Graph\Generated\Models\KeyValuePair;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Workflow();
$requestBody->setCategory(new LifecycleWorkflowCategory('mover'));
$requestBody->setDescription('Configure mover tasks for a user when their job profile changes');
$requestBody->setDisplayName('Sales contractor moves to full-time employee');
$requestBody->setIsEnabled(true);
$requestBody->setIsSchedulingEnabled(true);
$executionConditions = new TriggerAndScopeBasedConditions();
$executionConditions->setOdataType('#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions');
$executionConditionsScope = new RuleBasedSubjectSet();
$executionConditionsScope->setOdataType('#microsoft.graph.identityGovernance.ruleBasedSubjectSet');
$executionConditionsScope->setRule('(department eq \'Sales\')');
$executionConditions->setScope($executionConditionsScope);
$executionConditionsTrigger = new AttributeChangeTrigger();
$executionConditionsTrigger->setOdataType('#microsoft.graph.identityGovernance.attributeChangeTrigger');
$triggerAttributesTriggerAttribute1 = new TriggerAttribute();
$triggerAttributesTriggerAttribute1->setName('department');
$triggerAttributesArray []= $triggerAttributesTriggerAttribute1;
$executionConditionsTrigger->setTriggerAttributes($triggerAttributesArray);

$executionConditions->setTrigger($executionConditionsTrigger);
$requestBody->setExecutionConditions($executionConditions);
$tasksTask1 = new Task();
$tasksTask1->setContinueOnError(false);
$tasksTask1->setDescription('Send email to moving employee\'s manager');
$tasksTask1->setDisplayName('Notify manager of move');
$tasksTask1->setIsEnabled(true);
$tasksTask1->setTaskDefinitionId('aab41899-9972-422a-9d97-f626014578b7');
$tasksTask1->setArguments([]);
$tasksArray []= $tasksTask1;
$requestBody->setTasks($tasksArray);


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->post($requestBody)->wait();

```