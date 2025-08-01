---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerTaskConfiguration plannerTaskConfiguration = new PlannerTaskConfiguration();
PlannerTaskPolicy editPolicy = new PlannerTaskPolicy();
LinkedList<PlannerTaskRoleBasedRule> rules = new LinkedList<PlannerTaskRoleBasedRule>();
PlannerTaskRoleBasedRule plannerTaskRoleBasedRule = new PlannerTaskRoleBasedRule();
plannerTaskRoleBasedRule.setDefaultRule("block");
PlannerTaskPropertyRule propertyRule = new PlannerTaskPropertyRule();
propertyRule.setRuleKind(PlannerRuleKind.TaskRule);
PlannerFieldRules references = new PlannerFieldRules();
LinkedList<String> defaultRules = new LinkedList<String>();
defaultRules.add("allow");
references.setDefaultRules(defaultRules);
LinkedList<PlannerRuleOverride> overrides = new LinkedList<PlannerRuleOverride>();
references.setOverrides(overrides);
propertyRule.setReferences(references);
PlannerFieldRules checkLists = new PlannerFieldRules();
LinkedList<String> defaultRules1 = new LinkedList<String>();
defaultRules1.add("allow");
checkLists.setDefaultRules(defaultRules1);
LinkedList<PlannerRuleOverride> overrides1 = new LinkedList<PlannerRuleOverride>();
checkLists.setOverrides(overrides1);
propertyRule.setCheckLists(checkLists);
PlannerFieldRules assignments = new PlannerFieldRules();
LinkedList<String> defaultRules2 = new LinkedList<String>();
defaultRules2.add("allow");
assignments.setDefaultRules(defaultRules2);
LinkedList<PlannerRuleOverride> overrides2 = new LinkedList<PlannerRuleOverride>();
PlannerRuleOverride plannerRuleOverride = new PlannerRuleOverride();
plannerRuleOverride.setName("userCreated");
LinkedList<String> rules1 = new LinkedList<String>();
rules1.add("allow");
plannerRuleOverride.setRules(rules1);
overrides2.add(plannerRuleOverride);
PlannerRuleOverride plannerRuleOverride1 = new PlannerRuleOverride();
plannerRuleOverride1.setName("applicationCreated");
LinkedList<String> rules2 = new LinkedList<String>();
rules2.add("allow");
plannerRuleOverride1.setRules(rules2);
overrides2.add(plannerRuleOverride1);
assignments.setOverrides(overrides2);
propertyRule.setAssignments(assignments);
PlannerFieldRules appliedCategories = new PlannerFieldRules();
LinkedList<String> defaultRules3 = new LinkedList<String>();
defaultRules3.add("allow");
appliedCategories.setDefaultRules(defaultRules3);
LinkedList<PlannerRuleOverride> overrides3 = new LinkedList<PlannerRuleOverride>();
appliedCategories.setOverrides(overrides3);
propertyRule.setAppliedCategories(appliedCategories);
plannerTaskRoleBasedRule.setPropertyRule(propertyRule);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
PlannerRelationshipBasedUserType userType = new PlannerRelationshipBasedUserType();
userType.setOdataType("#microsoft.graph.plannerRelationshipBasedUserType");
userType.setRole(PlannerRelationshipUserRoles.DefaultRules);
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("selectionKind", "relationship");
userType.setAdditionalData(additionalData1);
additionalData.put("userType", userType);
plannerTaskRoleBasedRule.setAdditionalData(additionalData);
rules.add(plannerTaskRoleBasedRule);
editPolicy.setRules(rules);
plannerTaskConfiguration.setEditPolicy(editPolicy);
PlannerTaskConfiguration result = graphClient.solutions().businessScenarios().byBusinessScenarioId("{businessScenario-id}").planner().taskConfiguration().patch(plannerTaskConfiguration, requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"");
});


```