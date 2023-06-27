---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new CreateNewVersionPostRequestBody();
$workflow = new Workflow();
$workflow->setCategory(new LifecycleWorkflowCategory('joiner'));

$workflow->setDescription('Configure new hire tasks for onboarding employees on their first day');

$workflow->setDisplayName('Global onboard new hire employee');

$workflow->setIsEnabled(true);

$workflow->setIsSchedulingEnabled(false);

$workflowExecutionConditions = new TriggerAndScopeBasedConditions();
$workflowExecutionConditions->set@odatatype('#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions');

$workflowExecutionConditionsScope = new RuleBasedSubjectSet();
$workflowExecutionConditionsScope->set@odatatype('#microsoft.graph.identityGovernance.ruleBasedSubjectSet');

$workflowExecutionConditionsScope->setRule('(department eq \'Marketing\')');


$workflowExecutionConditions->setScope($workflowExecutionConditionsScope);
$workflowExecutionConditionsTrigger = new TimeBasedAttributeTrigger();
$workflowExecutionConditionsTrigger->set@odatatype('#microsoft.graph.identityGovernance.timeBasedAttributeTrigger');

$workflowExecutionConditionsTrigger->setTimeBasedAttribute(new WorkflowTriggerTimeBasedAttribute('employeehiredate'));

$workflowExecutionConditionsTrigger->setOffsetInDays(1);


$workflowExecutionConditions->setTrigger($workflowExecutionConditionsTrigger);

$workflow->setExecutionConditions($workflowExecutionConditions);
$tasksTask1 = new Task();
$tasksTask1->setContinueOnError(false);

$tasksTask1->setDescription('Enable user account in the directory');

$tasksTask1->setDisplayName('Enable User Account');

$tasksTask1->setIsEnabled(true);

$tasksTask1->setTaskDefinitionId('6fc52c9d-398b-4305-9763-15f42c1676fc');

$tasksTask1->setArguments([]);


$tasksArray []= $tasksTask1;
$tasksTask2 = new Task();
$tasksTask2->setContinueOnError(false);

$tasksTask2->setDescription('Send welcome email to new hire');

$tasksTask2->setDisplayName('Send Welcome Email');

$tasksTask2->setIsEnabled(true);

$tasksTask2->setTaskDefinitionId('70b29d51-b59a-4773-9280-8841dfd3f2ea');

$tasksTask2->setArguments([]);


$tasksArray []= $tasksTask2;
$workflow->setTasks($tasksArray);



$requestBody->setWorkflow($workflow);


$result = $graphServiceClient->identityGovernance()->lifecycleWorkflows()->workflows()->byWorkflowId('workflow-id')->microsoftGraphIdentityGovernanceCreateNewVersion()->post($requestBody);


```