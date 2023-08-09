---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PlannerTaskConfiguration plannerTaskConfiguration = new PlannerTaskConfiguration();
PlannerTaskPolicy editPolicy = new PlannerTaskPolicy();
LinkedList<PlannerTaskRoleBasedRule> rulesList = new LinkedList<PlannerTaskRoleBasedRule>();
PlannerTaskRoleBasedRule rules = new PlannerTaskRoleBasedRule();
rules.defaultRule = "block";
PlannerRelationshipBasedUserType role = new PlannerRelationshipBasedUserType();
role.roleKind = PlannerUserRoleKind.RELATIONSHIP;
role.role = PlannerRelationshipUserRoles.DEFAULT_RULES;
rules.role = role1;
PlannerTaskPropertyRule propertyRule = new PlannerTaskPropertyRule();
LinkedList<String> percentCompleteList = new LinkedList<String>();
percentCompleteList.add("allow");
propertyRule.percentComplete = percentCompleteList;
propertyRule.ruleKind = PlannerRuleKind.TASK_RULE;
PlannerFieldRules assignments = new PlannerFieldRules();
LinkedList<String> defaultRulesList = new LinkedList<String>();
defaultRulesList.add("addSelf");
assignments.defaultRules = defaultRulesList;
LinkedList<PlannerRuleOverride> overridesList = new LinkedList<PlannerRuleOverride>();
assignments.overrides = overridesList;
propertyRule.assignments = assignments;
rules.propertyRule = propertyRule;
rulesList.add(rules);
PlannerTaskRoleBasedRule rules1 = new PlannerTaskRoleBasedRule();
rules1.defaultRule = "block";
PlannerRelationshipBasedUserType role2 = new PlannerRelationshipBasedUserType();
role2.roleKind = PlannerUserRoleKind.RELATIONSHIP;
role2.role = PlannerRelationshipUserRoles.TASK_ASSIGNEES;
rules1.role = role3;
PlannerTaskPropertyRule propertyRule1 = new PlannerTaskPropertyRule();
LinkedList<String> startDateList = new LinkedList<String>();
startDateList.add("allow");
propertyRule1.startDate = startDateList;
LinkedList<String> dueDateList = new LinkedList<String>();
dueDateList.add("allow");
propertyRule1.dueDate = dueDateList;
LinkedList<String> percentCompleteList1 = new LinkedList<String>();
percentCompleteList1.add("allow");
propertyRule1.percentComplete = percentCompleteList1;
LinkedList<String> orderList = new LinkedList<String>();
orderList.add("allow");
propertyRule1.order = orderList;
propertyRule1.ruleKind = PlannerRuleKind.TASK_RULE;
PlannerFieldRules references = new PlannerFieldRules();
LinkedList<String> defaultRulesList1 = new LinkedList<String>();
defaultRulesList1.add("allow");
references.defaultRules = defaultRulesList1;
LinkedList<PlannerRuleOverride> overridesList1 = new LinkedList<PlannerRuleOverride>();
PlannerRuleOverride overrides = new PlannerRuleOverride();
overrides.name = "userCreated";
LinkedList<PlannerRuleOverride> rulesList = new LinkedList<PlannerRuleOverride>();
rulesList.add(allow);
overrides.rules = rulesList;
overridesList1.add(overrides);
PlannerRuleOverride overrides1 = new PlannerRuleOverride();
overrides1.name = "applicationCreated";
LinkedList<PlannerRuleOverride> rulesList1 = new LinkedList<PlannerRuleOverride>();
rulesList1.add(block);
overrides1.rules = rulesList1;
overridesList1.add(overrides1);
references.overrides = overridesList1;
propertyRule1.references = references;
PlannerFieldRules checkLists = new PlannerFieldRules();
LinkedList<String> defaultRulesList2 = new LinkedList<String>();
defaultRulesList2.add("allow");
checkLists.defaultRules = defaultRulesList2;
LinkedList<PlannerRuleOverride> overridesList2 = new LinkedList<PlannerRuleOverride>();
PlannerRuleOverride overrides2 = new PlannerRuleOverride();
overrides2.name = "userCreated";
LinkedList<PlannerRuleOverride> rulesList2 = new LinkedList<PlannerRuleOverride>();
rulesList2.add(allow);
overrides2.rules = rulesList2;
overridesList2.add(overrides2);
PlannerRuleOverride overrides3 = new PlannerRuleOverride();
overrides3.name = "applicationCreated";
LinkedList<PlannerRuleOverride> rulesList3 = new LinkedList<PlannerRuleOverride>();
rulesList3.add(check);
overrides3.rules = rulesList3;
overridesList2.add(overrides3);
checkLists.overrides = overridesList2;
propertyRule1.checkLists = checkLists;
PlannerFieldRules assignments1 = new PlannerFieldRules();
LinkedList<String> defaultRulesList3 = new LinkedList<String>();
defaultRulesList3.add("block");
assignments1.defaultRules = defaultRulesList3;
LinkedList<PlannerRuleOverride> overridesList3 = new LinkedList<PlannerRuleOverride>();
PlannerRuleOverride overrides4 = new PlannerRuleOverride();
overrides4.name = "userCreated";
LinkedList<PlannerRuleOverride> rulesList4 = new LinkedList<PlannerRuleOverride>();
rulesList4.add(removeSelf);
overrides4.rules = rulesList4;
overridesList3.add(overrides4);
PlannerRuleOverride overrides5 = new PlannerRuleOverride();
overrides5.name = "applicationCreated";
LinkedList<PlannerRuleOverride> rulesList5 = new LinkedList<PlannerRuleOverride>();
rulesList5.add(check);
overrides5.rules = rulesList5;
overridesList3.add(overrides5);
assignments1.overrides = overridesList3;
propertyRule1.assignments = assignments1;
PlannerFieldRules appliedCategories = new PlannerFieldRules();
LinkedList<String> defaultRulesList4 = new LinkedList<String>();
defaultRulesList4.add("allow");
appliedCategories.defaultRules = defaultRulesList4;
LinkedList<PlannerRuleOverride> overridesList4 = new LinkedList<PlannerRuleOverride>();
appliedCategories.overrides = overridesList4;
propertyRule1.appliedCategories = appliedCategories;
rules1.propertyRule = propertyRule1;
rulesList.add(rules1);
editPolicy.rules = rulesList6;
plannerTaskConfiguration.editPolicy = editPolicy;

graphClient.solutions().businessScenarios("c5d514e6c6864911ac46c720affb6e4d").planner().taskConfiguration()
	.buildRequest()
	.patch(plannerTaskConfiguration);

```