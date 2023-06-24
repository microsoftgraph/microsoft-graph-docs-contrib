---
description: "Automatically generated file. DO NOT MODIFY"
---

```python

// THE PYTHON SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
client =  GraphServiceClient(request_adapter)

request_body = PlannerTaskConfiguration()
request_body.@odata_type = '#microsoft.graph.plannerTaskConfiguration'

edit_policy = PlannerTaskPolicy()
rules_planner_task_role_based_rule1 = PlannerTaskRoleBasedRule()
rules_planner_task_role_based_rule1.default_rule = 'block'

rules_planner_task_role_based_rule1role = PlannerRelationshipBasedUserType()
rules_planner_task_role_based_rule1role.@odata_type = '#microsoft.graph.plannerRelationshipBasedUserType'

rules_planner_task_role_based_rule1role.rolekind(PlannerUserRoleKind.Relationship('planneruserrolekind.relationship'))

rules_planner_task_role_based_rule1role.role(PlannerRelationshipUserRoles.DefaultRules('plannerrelationshipuserroles.defaultrules'))


rules_planner_task_role_based_rule1.role = rules_planner_task_role_based_rule1role
rules_planner_task_role_based_rule1property_rule = PlannerTaskPropertyRule()
rules_planner_task_role_based_rule1property_rule.PercentComplete(['allow', ])

rules_planner_task_role_based_rule1property_rule.rulekind(PlannerRuleKind.TaskRule('plannerrulekind.taskrule'))

rules_planner_task_role_based_rule1property_ruleassignments = PlannerFieldRules()
rules_planner_task_role_based_rule1property_ruleassignments.DefaultRules(['addSelf', ])

rules_planner_task_role_based_rule1property_ruleassignments.Overrides([])


rules_planner_task_role_based_rule1property_rule.assignments = rules_planner_task_role_based_rule1property_ruleassignments

rules_planner_task_role_based_rule1.property_rule = rules_planner_task_role_based_rule1property_rule

rulesArray []= rulesPlannerTaskRoleBasedRule1;
rules_planner_task_role_based_rule2 = PlannerTaskRoleBasedRule()
rules_planner_task_role_based_rule2.default_rule = 'block'

rules_planner_task_role_based_rule2role = PlannerRelationshipBasedUserType()
rules_planner_task_role_based_rule2role.@odata_type = '#microsoft.graph.plannerRelationshipBasedUserType'

rules_planner_task_role_based_rule2role.rolekind(PlannerUserRoleKind.Relationship('planneruserrolekind.relationship'))

rules_planner_task_role_based_rule2role.role(PlannerRelationshipUserRoles.TaskAssignees('plannerrelationshipuserroles.taskassignees'))


rules_planner_task_role_based_rule2.role = rules_planner_task_role_based_rule2role
rules_planner_task_role_based_rule2property_rule = PlannerTaskPropertyRule()
rules_planner_task_role_based_rule2property_rule.StartDate(['allow', ])

rules_planner_task_role_based_rule2property_rule.DueDate(['allow', ])

rules_planner_task_role_based_rule2property_rule.PercentComplete(['allow', ])

rules_planner_task_role_based_rule2property_rule.Order(['allow', ])

rules_planner_task_role_based_rule2property_rule.rulekind(PlannerRuleKind.TaskRule('plannerrulekind.taskrule'))

rules_planner_task_role_based_rule2property_rulereferences = PlannerFieldRules()
rules_planner_task_role_based_rule2property_rulereferences.DefaultRules(['allow', ])

overrides_planner_rule_override1 = PlannerRuleOverride()
overrides_planner_rule_override1.name = 'userCreated'

overrides_planner_rule_override1.Rules(['allow', ])


overridesArray []= overridesPlannerRuleOverride1;
overrides_planner_rule_override2 = PlannerRuleOverride()
overrides_planner_rule_override2.name = 'applicationCreated'

overrides_planner_rule_override2.Rules(['block', ])


overridesArray []= overridesPlannerRuleOverride2;
rules_planner_task_role_based_rule2property_rulereferences.overrides(overridesArray)



rules_planner_task_role_based_rule2property_rule.references = rules_planner_task_role_based_rule2property_rulereferences
rules_planner_task_role_based_rule2property_rulecheck_lists = PlannerFieldRules()
rules_planner_task_role_based_rule2property_rulecheck_lists.DefaultRules(['allow', ])

overrides_planner_rule_override1 = PlannerRuleOverride()
overrides_planner_rule_override1.name = 'userCreated'

overrides_planner_rule_override1.Rules(['allow', ])


overridesArray []= overridesPlannerRuleOverride1;
overrides_planner_rule_override2 = PlannerRuleOverride()
overrides_planner_rule_override2.name = 'applicationCreated'

overrides_planner_rule_override2.Rules(['check', ])


overridesArray []= overridesPlannerRuleOverride2;
rules_planner_task_role_based_rule2property_rulecheck_lists.overrides(overridesArray)



rules_planner_task_role_based_rule2property_rule.check_lists = rules_planner_task_role_based_rule2property_rulecheck_lists
rules_planner_task_role_based_rule2property_ruleassignments = PlannerFieldRules()
rules_planner_task_role_based_rule2property_ruleassignments.DefaultRules(['block', ])

overrides_planner_rule_override1 = PlannerRuleOverride()
overrides_planner_rule_override1.name = 'userCreated'

overrides_planner_rule_override1.Rules(['removeSelf', ])


overridesArray []= overridesPlannerRuleOverride1;
overrides_planner_rule_override2 = PlannerRuleOverride()
overrides_planner_rule_override2.name = 'applicationCreated'

overrides_planner_rule_override2.Rules(['check', ])


overridesArray []= overridesPlannerRuleOverride2;
rules_planner_task_role_based_rule2property_ruleassignments.overrides(overridesArray)



rules_planner_task_role_based_rule2property_rule.assignments = rules_planner_task_role_based_rule2property_ruleassignments
rules_planner_task_role_based_rule2property_ruleapplied_categories = PlannerFieldRules()
rules_planner_task_role_based_rule2property_ruleapplied_categories.DefaultRules(['allow', ])

rules_planner_task_role_based_rule2property_ruleapplied_categories.Overrides([])


rules_planner_task_role_based_rule2property_rule.applied_categories = rules_planner_task_role_based_rule2property_ruleapplied_categories

rules_planner_task_role_based_rule2.property_rule = rules_planner_task_role_based_rule2property_rule

rulesArray []= rulesPlannerTaskRoleBasedRule2;
edit_policy.rules(rulesArray)



request_body.edit_policy = edit_policy



result = await client.solutions.busine_scenarios.by_busine_scenario_id('businessScenario-id').planner.task_configuration.patch(request_body = request_body)


```