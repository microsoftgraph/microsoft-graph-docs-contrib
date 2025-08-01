---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Solutions\BusinessScenarios\Item\Planner\TaskConfiguration\TaskConfigurationRequestBuilderPatchRequestConfiguration;
use Microsoft\Graph\Beta\Generated\Models\PlannerTaskConfiguration;
use Microsoft\Graph\Beta\Generated\Models\PlannerTaskPolicy;
use Microsoft\Graph\Beta\Generated\Models\PlannerTaskRoleBasedRule;
use Microsoft\Graph\Beta\Generated\Models\PlannerTaskPropertyRule;
use Microsoft\Graph\Beta\Generated\Models\PlannerRuleKind;
use Microsoft\Graph\Beta\Generated\Models\PlannerFieldRules;
use Microsoft\Graph\Beta\Generated\Models\PlannerRuleOverride;
use Microsoft\Graph\Beta\Generated\Models\PlannerRelationshipBasedUserType;
use Microsoft\Graph\Beta\Generated\Models\PlannerRelationshipUserRoles;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new PlannerTaskConfiguration();
$editPolicy = new PlannerTaskPolicy();
$rulesPlannerTaskRoleBasedRule1 = new PlannerTaskRoleBasedRule();
$rulesPlannerTaskRoleBasedRule1->setDefaultRule('block');
$rulesPlannerTaskRoleBasedRule1PropertyRule = new PlannerTaskPropertyRule();
$rulesPlannerTaskRoleBasedRule1PropertyRule->setRuleKind(new PlannerRuleKind('taskRule'));
$rulesPlannerTaskRoleBasedRule1PropertyRuleReferences = new PlannerFieldRules();
$rulesPlannerTaskRoleBasedRule1PropertyRuleReferences->setDefaultRules(['allow', 	]);
$rulesPlannerTaskRoleBasedRule1PropertyRuleReferences->setOverrides([	]);
$rulesPlannerTaskRoleBasedRule1PropertyRule->setReferences($rulesPlannerTaskRoleBasedRule1PropertyRuleReferences);
$rulesPlannerTaskRoleBasedRule1PropertyRuleCheckLists = new PlannerFieldRules();
$rulesPlannerTaskRoleBasedRule1PropertyRuleCheckLists->setDefaultRules(['allow', 	]);
$rulesPlannerTaskRoleBasedRule1PropertyRuleCheckLists->setOverrides([	]);
$rulesPlannerTaskRoleBasedRule1PropertyRule->setCheckLists($rulesPlannerTaskRoleBasedRule1PropertyRuleCheckLists);
$rulesPlannerTaskRoleBasedRule1PropertyRuleAssignments = new PlannerFieldRules();
$rulesPlannerTaskRoleBasedRule1PropertyRuleAssignments->setDefaultRules(['allow', 	]);
$overridesPlannerRuleOverride1 = new PlannerRuleOverride();
$overridesPlannerRuleOverride1->setName('userCreated');
$overridesPlannerRuleOverride1->setRules(['allow', 	]);
$overridesArray []= $overridesPlannerRuleOverride1;
$overridesPlannerRuleOverride2 = new PlannerRuleOverride();
$overridesPlannerRuleOverride2->setName('applicationCreated');
$overridesPlannerRuleOverride2->setRules(['allow', 	]);
$overridesArray []= $overridesPlannerRuleOverride2;
$rulesPlannerTaskRoleBasedRule1PropertyRuleAssignments->setOverrides($overridesArray);

$rulesPlannerTaskRoleBasedRule1PropertyRule->setAssignments($rulesPlannerTaskRoleBasedRule1PropertyRuleAssignments);
$rulesPlannerTaskRoleBasedRule1PropertyRuleAppliedCategories = new PlannerFieldRules();
$rulesPlannerTaskRoleBasedRule1PropertyRuleAppliedCategories->setDefaultRules(['allow', ]);
$rulesPlannerTaskRoleBasedRule1PropertyRuleAppliedCategories->setOverrides([]);
$rulesPlannerTaskRoleBasedRule1PropertyRule->setAppliedCategories($rulesPlannerTaskRoleBasedRule1PropertyRuleAppliedCategories);
$rulesPlannerTaskRoleBasedRule1->setPropertyRule($rulesPlannerTaskRoleBasedRule1PropertyRule);
$additionalData = [
'userType' => [
	'@odata.type' => '#microsoft.graph.plannerRelationshipBasedUserType',
	'role' => new PlannerRelationshipUserRoles('defaultRules'),
	'additionalData' => [
		'selectionKind' => 'relationship',
	],
],
];
$rulesPlannerTaskRoleBasedRule1->setAdditionalData($additionalData);
$rulesArray []= $rulesPlannerTaskRoleBasedRule1;
$editPolicy->setRules($rulesArray);

$requestBody->setEditPolicy($editPolicy);
$requestConfiguration = new TaskConfigurationRequestBuilderPatchRequestConfiguration();
$headers = [
'If-Match' => 'W/"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc="',
];
$requestConfiguration->headers = $headers;


$result = $graphServiceClient->solutions()->businessScenarios()->byBusinessScenarioId('businessScenario-id')->planner()->taskConfiguration()->patch($requestBody, $requestConfiguration)->wait();

```