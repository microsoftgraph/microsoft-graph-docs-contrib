---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PlannerTaskConfiguration plannerTaskConfiguration = new PlannerTaskConfiguration();
plannerTaskConfiguration.setOdataType("#microsoft.graph.plannerTaskConfiguration");
PlannerTaskPolicy editPolicy = new PlannerTaskPolicy();
LinkedList<PlannerTaskRoleBasedRule> rules = new LinkedList<PlannerTaskRoleBasedRule>();
PlannerTaskRoleBasedRule plannerTaskRoleBasedRule = new PlannerTaskRoleBasedRule();
plannerTaskRoleBasedRule.setDefaultRule("block");
PlannerRelationshipBasedUserType role = new PlannerRelationshipBasedUserType();
role.setOdataType("#microsoft.graph.plannerRelationshipBasedUserType");
role.setRoleKind(PlannerUserRoleKind.Relationship);
role.setRole(PlannerRelationshipUserRoles.DefaultRules);
plannerTaskRoleBasedRule.setRole(role);
PlannerTaskPropertyRule propertyRule = new PlannerTaskPropertyRule();
LinkedList<String> percentComplete = new LinkedList<String>();
percentComplete.add("allow");
propertyRule.setPercentComplete(percentComplete);
propertyRule.setRuleKind(PlannerRuleKind.TaskRule);
PlannerFieldRules assignments = new PlannerFieldRules();
LinkedList<String> defaultRules = new LinkedList<String>();
defaultRules.add("addSelf");
assignments.setDefaultRules(defaultRules);
LinkedList<PlannerRuleOverride> overrides = new LinkedList<PlannerRuleOverride>();
assignments.setOverrides(overrides);
propertyRule.setAssignments(assignments);
plannerTaskRoleBasedRule.setPropertyRule(propertyRule);
rules.add(plannerTaskRoleBasedRule);
PlannerTaskRoleBasedRule plannerTaskRoleBasedRule1 = new PlannerTaskRoleBasedRule();
plannerTaskRoleBasedRule1.setDefaultRule("block");
PlannerRelationshipBasedUserType role2 = new PlannerRelationshipBasedUserType();
role2.setOdataType("#microsoft.graph.plannerRelationshipBasedUserType");
role2.setRoleKind(PlannerUserRoleKind.Relationship);
role2.setRole(PlannerRelationshipUserRoles.TaskAssignees);
plannerTaskRoleBasedRule1.setRole(role2);
PlannerTaskPropertyRule propertyRule1 = new PlannerTaskPropertyRule();
LinkedList<String> startDate = new LinkedList<String>();
startDate.add("allow");
propertyRule1.setStartDate(startDate);
LinkedList<String> dueDate = new LinkedList<String>();
dueDate.add("allow");
propertyRule1.setDueDate(dueDate);
LinkedList<String> percentComplete1 = new LinkedList<String>();
percentComplete1.add("allow");
propertyRule1.setPercentComplete(percentComplete1);
LinkedList<String> order = new LinkedList<String>();
order.add("allow");
propertyRule1.setOrder(order);
propertyRule1.setRuleKind(PlannerRuleKind.TaskRule);
PlannerFieldRules references = new PlannerFieldRules();
LinkedList<String> defaultRules1 = new LinkedList<String>();
defaultRules1.add("allow");
references.setDefaultRules(defaultRules1);
LinkedList<PlannerRuleOverride> overrides1 = new LinkedList<PlannerRuleOverride>();
PlannerRuleOverride plannerRuleOverride = new PlannerRuleOverride();
plannerRuleOverride.setName("userCreated");
LinkedList<String> rules1 = new LinkedList<String>();
rules1.add("allow");
plannerRuleOverride.setRules(rules1);
overrides1.add(plannerRuleOverride);
PlannerRuleOverride plannerRuleOverride1 = new PlannerRuleOverride();
plannerRuleOverride1.setName("applicationCreated");
LinkedList<String> rules2 = new LinkedList<String>();
rules2.add("block");
plannerRuleOverride1.setRules(rules2);
overrides1.add(plannerRuleOverride1);
references.setOverrides(overrides1);
propertyRule1.setReferences(references);
PlannerFieldRules checkLists = new PlannerFieldRules();
LinkedList<String> defaultRules2 = new LinkedList<String>();
defaultRules2.add("allow");
checkLists.setDefaultRules(defaultRules2);
LinkedList<PlannerRuleOverride> overrides2 = new LinkedList<PlannerRuleOverride>();
PlannerRuleOverride plannerRuleOverride2 = new PlannerRuleOverride();
plannerRuleOverride2.setName("userCreated");
LinkedList<String> rules3 = new LinkedList<String>();
rules3.add("allow");
plannerRuleOverride2.setRules(rules3);
overrides2.add(plannerRuleOverride2);
PlannerRuleOverride plannerRuleOverride3 = new PlannerRuleOverride();
plannerRuleOverride3.setName("applicationCreated");
LinkedList<String> rules4 = new LinkedList<String>();
rules4.add("check");
plannerRuleOverride3.setRules(rules4);
overrides2.add(plannerRuleOverride3);
checkLists.setOverrides(overrides2);
propertyRule1.setCheckLists(checkLists);
PlannerFieldRules assignments1 = new PlannerFieldRules();
LinkedList<String> defaultRules3 = new LinkedList<String>();
defaultRules3.add("block");
assignments1.setDefaultRules(defaultRules3);
LinkedList<PlannerRuleOverride> overrides3 = new LinkedList<PlannerRuleOverride>();
PlannerRuleOverride plannerRuleOverride4 = new PlannerRuleOverride();
plannerRuleOverride4.setName("userCreated");
LinkedList<String> rules5 = new LinkedList<String>();
rules5.add("removeSelf");
plannerRuleOverride4.setRules(rules5);
overrides3.add(plannerRuleOverride4);
PlannerRuleOverride plannerRuleOverride5 = new PlannerRuleOverride();
plannerRuleOverride5.setName("applicationCreated");
LinkedList<String> rules6 = new LinkedList<String>();
rules6.add("check");
plannerRuleOverride5.setRules(rules6);
overrides3.add(plannerRuleOverride5);
assignments1.setOverrides(overrides3);
propertyRule1.setAssignments(assignments1);
PlannerFieldRules appliedCategories = new PlannerFieldRules();
LinkedList<String> defaultRules4 = new LinkedList<String>();
defaultRules4.add("allow");
appliedCategories.setDefaultRules(defaultRules4);
LinkedList<PlannerRuleOverride> overrides4 = new LinkedList<PlannerRuleOverride>();
appliedCategories.setOverrides(overrides4);
propertyRule1.setAppliedCategories(appliedCategories);
plannerTaskRoleBasedRule1.setPropertyRule(propertyRule1);
rules.add(plannerTaskRoleBasedRule1);
editPolicy.setRules(rules);
plannerTaskConfiguration.setEditPolicy(editPolicy);
PlannerTaskConfiguration result = graphClient.solutions().businessScenarios().byBusinessScenarioId("{businessScenario-id}").planner().taskConfiguration().patch(plannerTaskConfiguration);


```