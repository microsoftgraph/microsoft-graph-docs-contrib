---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new PlannerTaskConfiguration();
$requestBody->set@odatatype('#microsoft.graph.plannerTaskConfiguration');

$editPolicy = new PlannerTaskPolicy();
$rulesPlannerTaskRoleBasedRule1 = new PlannerTaskRoleBasedRule();
$rulesPlannerTaskRoleBasedRule1->setDefaultRule('block');

$rulesPlannerTaskRoleBasedRule1Role = new PlannerTaskConfigurationRoleBase();
$rulesPlannerTaskRoleBasedRule1Role->set@odatatype('#microsoft.graph.plannerRelationshipBasedUserType');

$rulesPlannerTaskRoleBasedRule1Role->setRoleKind(new PlannerUserRoleKind('relationship'));

$additionalData = [
		'role' => 'defaultRules', 
];
$rulesPlannerTaskRoleBasedRule1Role->setAdditionalData($additionalData);



$rulesPlannerTaskRoleBasedRule1->setRole($rulesPlannerTaskRoleBasedRule1Role);
$rulesPlannerTaskRoleBasedRule1PropertyRule = new PlannerTaskPropertyRule();
$rulesPlannerTaskRoleBasedRule1PropertyRule->setPercentComplete(['allow', ]);

$rulesPlannerTaskRoleBasedRule1PropertyRule->setRuleKind(new PlannerRuleKind('taskrule'));

$rulesPlannerTaskRoleBasedRule1PropertyRuleAssignments = new PlannerFieldRules();
$rulesPlannerTaskRoleBasedRule1PropertyRuleAssignments->setDefaultRules(['addSelf', ]);

$rulesPlannerTaskRoleBasedRule1PropertyRuleAssignments->setOverrides([]);


$rulesPlannerTaskRoleBasedRule1PropertyRule->setAssignments($rulesPlannerTaskRoleBasedRule1PropertyRuleAssignments);

$rulesPlannerTaskRoleBasedRule1->setPropertyRule($rulesPlannerTaskRoleBasedRule1PropertyRule);

$rulesArray []= $rulesPlannerTaskRoleBasedRule1;
$rulesPlannerTaskRoleBasedRule2 = new PlannerTaskRoleBasedRule();
$rulesPlannerTaskRoleBasedRule2->setDefaultRule('block');

$rulesPlannerTaskRoleBasedRule2Role = new PlannerTaskConfigurationRoleBase();
$rulesPlannerTaskRoleBasedRule2Role->set@odatatype('#microsoft.graph.plannerRelationshipBasedUserType');

$rulesPlannerTaskRoleBasedRule2Role->setRoleKind(new PlannerUserRoleKind('relationship'));

$additionalData = [
'role' => 'taskAssignees', 
];
$rulesPlannerTaskRoleBasedRule2Role->setAdditionalData($additionalData);



$rulesPlannerTaskRoleBasedRule2->setRole($rulesPlannerTaskRoleBasedRule2Role);
$rulesPlannerTaskRoleBasedRule2PropertyRule = new PlannerTaskPropertyRule();
$rulesPlannerTaskRoleBasedRule2PropertyRule->setStartDate(['allow', ]);

$rulesPlannerTaskRoleBasedRule2PropertyRule->setDueDate(['allow', ]);

$rulesPlannerTaskRoleBasedRule2PropertyRule->setPercentComplete(['allow', ]);

$rulesPlannerTaskRoleBasedRule2PropertyRule->setOrder(['allow', ]);

$rulesPlannerTaskRoleBasedRule2PropertyRule->setRuleKind(new PlannerRuleKind('taskrule'));

$rulesPlannerTaskRoleBasedRule2PropertyRuleReferences = new PlannerFieldRules();
$rulesPlannerTaskRoleBasedRule2PropertyRuleReferences->setDefaultRules(['allow', ]);

$overridesPlannerRuleOverride1 = new PlannerRuleOverride();
$overridesPlannerRuleOverride1->setName('userCreated');

$overridesPlannerRuleOverride1->setRules(['allow', ]);


$overridesArray []= $overridesPlannerRuleOverride1;
$overridesPlannerRuleOverride2 = new PlannerRuleOverride();
$overridesPlannerRuleOverride2->setName('applicationCreated');

$overridesPlannerRuleOverride2->setRules(['block', ]);


$overridesArray []= $overridesPlannerRuleOverride2;
$rulesPlannerTaskRoleBasedRule2PropertyRuleReferences->setOverrides($overridesArray);



$rulesPlannerTaskRoleBasedRule2PropertyRule->setReferences($rulesPlannerTaskRoleBasedRule2PropertyRuleReferences);
$rulesPlannerTaskRoleBasedRule2PropertyRuleCheckLists = new PlannerFieldRules();
$rulesPlannerTaskRoleBasedRule2PropertyRuleCheckLists->setDefaultRules(['allow', ]);

$overridesPlannerRuleOverride1 = new PlannerRuleOverride();
$overridesPlannerRuleOverride1->setName('userCreated');

$overridesPlannerRuleOverride1->setRules(['allow', ]);


$overridesArray []= $overridesPlannerRuleOverride1;
$overridesPlannerRuleOverride2 = new PlannerRuleOverride();
$overridesPlannerRuleOverride2->setName('applicationCreated');

$overridesPlannerRuleOverride2->setRules(['check', ]);


$overridesArray []= $overridesPlannerRuleOverride2;
$rulesPlannerTaskRoleBasedRule2PropertyRuleCheckLists->setOverrides($overridesArray);



$rulesPlannerTaskRoleBasedRule2PropertyRule->setCheckLists($rulesPlannerTaskRoleBasedRule2PropertyRuleCheckLists);
$rulesPlannerTaskRoleBasedRule2PropertyRuleAssignments = new PlannerFieldRules();
$rulesPlannerTaskRoleBasedRule2PropertyRuleAssignments->setDefaultRules(['block', ]);

$overridesPlannerRuleOverride1 = new PlannerRuleOverride();
$overridesPlannerRuleOverride1->setName('userCreated');

$overridesPlannerRuleOverride1->setRules(['removeSelf', ]);


$overridesArray []= $overridesPlannerRuleOverride1;
$overridesPlannerRuleOverride2 = new PlannerRuleOverride();
$overridesPlannerRuleOverride2->setName('applicationCreated');

$overridesPlannerRuleOverride2->setRules(['check', ]);


$overridesArray []= $overridesPlannerRuleOverride2;
$rulesPlannerTaskRoleBasedRule2PropertyRuleAssignments->setOverrides($overridesArray);



$rulesPlannerTaskRoleBasedRule2PropertyRule->setAssignments($rulesPlannerTaskRoleBasedRule2PropertyRuleAssignments);
$rulesPlannerTaskRoleBasedRule2PropertyRuleAppliedCategories = new PlannerFieldRules();
$rulesPlannerTaskRoleBasedRule2PropertyRuleAppliedCategories->setDefaultRules(['allow', ]);

$rulesPlannerTaskRoleBasedRule2PropertyRuleAppliedCategories->setOverrides([]);


$rulesPlannerTaskRoleBasedRule2PropertyRule->setAppliedCategories($rulesPlannerTaskRoleBasedRule2PropertyRuleAppliedCategories);

$rulesPlannerTaskRoleBasedRule2->setPropertyRule($rulesPlannerTaskRoleBasedRule2PropertyRule);

$rulesArray []= $rulesPlannerTaskRoleBasedRule2;
$editPolicy->setRules($rulesArray);



$requestBody->setEditPolicy($editPolicy);


$result = $graphServiceClient->solutions()->businessScenariosById('businessScenario-id')->planner()->taskConfiguration()->patch($requestBody);


```