---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewPlannerTaskConfiguration()
editPolicy := graphmodels.NewPlannerTaskPolicy()


plannerTaskRoleBasedRule := graphmodels.NewPlannerTaskRoleBasedRule()
defaultRule := "block"
plannerTaskRoleBasedRule.SetDefaultRule(&defaultRule) 
role := graphmodels.NewPlannerTaskConfigurationRoleBase()
roleKind := graphmodels.RELATIONSHIP_PLANNERUSERROLEKIND 
role.SetRoleKind(&roleKind) 
additionalData := map[string]interface{}{
	"role" : "defaultRules", 
}
role.SetAdditionalData(additionalData)
plannerTaskRoleBasedRule.SetRole(role)
propertyRule := graphmodels.NewPlannerTaskPropertyRule()
percentComplete := []string {
	"allow",

}
propertyRule.SetPercentComplete(percentComplete)
ruleKind := graphmodels.TASKRULE_PLANNERRULEKIND 
propertyRule.SetRuleKind(&ruleKind) 
assignments := graphmodels.NewPlannerFieldRules()
defaultRules := []string {
	"addSelf",

}
assignments.SetDefaultRules(defaultRules)
overrides := []graphmodels.PlannerRuleOverrideable {

}
assignments.SetOverrides(overrides)
propertyRule.SetAssignments(assignments)
plannerTaskRoleBasedRule.SetPropertyRule(propertyRule)
plannerTaskRoleBasedRule1 := graphmodels.NewPlannerTaskRoleBasedRule()
defaultRule := "block"
plannerTaskRoleBasedRule1.SetDefaultRule(&defaultRule) 
role := graphmodels.NewPlannerTaskConfigurationRoleBase()
roleKind := graphmodels.RELATIONSHIP_PLANNERUSERROLEKIND 
role.SetRoleKind(&roleKind) 
additionalData := map[string]interface{}{
	"role" : "taskAssignees", 
}
role.SetAdditionalData(additionalData)
plannerTaskRoleBasedRule1.SetRole(role)
propertyRule := graphmodels.NewPlannerTaskPropertyRule()
startDate := []string {
	"allow",

}
propertyRule.SetStartDate(startDate)
dueDate := []string {
	"allow",

}
propertyRule.SetDueDate(dueDate)
percentComplete := []string {
	"allow",

}
propertyRule.SetPercentComplete(percentComplete)
order := []string {
	"allow",

}
propertyRule.SetOrder(order)
ruleKind := graphmodels.TASKRULE_PLANNERRULEKIND 
propertyRule.SetRuleKind(&ruleKind) 
references := graphmodels.NewPlannerFieldRules()
defaultRules := []string {
	"allow",

}
references.SetDefaultRules(defaultRules)


plannerRuleOverride := graphmodels.NewPlannerRuleOverride()
name := "userCreated"
plannerRuleOverride.SetName(&name) 
rules := []string {
	"allow",

}
plannerRuleOverride.SetRules(rules)
plannerRuleOverride1 := graphmodels.NewPlannerRuleOverride()
name := "applicationCreated"
plannerRuleOverride1.SetName(&name) 
rules := []string {
	"block",

}
plannerRuleOverride1.SetRules(rules)

overrides := []graphmodels.PlannerRuleOverrideable {
	plannerRuleOverride,
	plannerRuleOverride1,

}
references.SetOverrides(overrides)
propertyRule.SetReferences(references)
checkLists := graphmodels.NewPlannerFieldRules()
defaultRules := []string {
	"allow",

}
checkLists.SetDefaultRules(defaultRules)


plannerRuleOverride := graphmodels.NewPlannerRuleOverride()
name := "userCreated"
plannerRuleOverride.SetName(&name) 
rules := []string {
	"allow",

}
plannerRuleOverride.SetRules(rules)
plannerRuleOverride1 := graphmodels.NewPlannerRuleOverride()
name := "applicationCreated"
plannerRuleOverride1.SetName(&name) 
rules := []string {
	"check",

}
plannerRuleOverride1.SetRules(rules)

overrides := []graphmodels.PlannerRuleOverrideable {
	plannerRuleOverride,
	plannerRuleOverride1,

}
checkLists.SetOverrides(overrides)
propertyRule.SetCheckLists(checkLists)
assignments := graphmodels.NewPlannerFieldRules()
defaultRules := []string {
	"block",

}
assignments.SetDefaultRules(defaultRules)


plannerRuleOverride := graphmodels.NewPlannerRuleOverride()
name := "userCreated"
plannerRuleOverride.SetName(&name) 
rules := []string {
	"removeSelf",

}
plannerRuleOverride.SetRules(rules)
plannerRuleOverride1 := graphmodels.NewPlannerRuleOverride()
name := "applicationCreated"
plannerRuleOverride1.SetName(&name) 
rules := []string {
	"check",

}
plannerRuleOverride1.SetRules(rules)

overrides := []graphmodels.PlannerRuleOverrideable {
	plannerRuleOverride,
	plannerRuleOverride1,

}
assignments.SetOverrides(overrides)
propertyRule.SetAssignments(assignments)
appliedCategories := graphmodels.NewPlannerFieldRules()
defaultRules := []string {
	"allow",

}
appliedCategories.SetDefaultRules(defaultRules)
overrides := []graphmodels.PlannerRuleOverrideable {

}
appliedCategories.SetOverrides(overrides)
propertyRule.SetAppliedCategories(appliedCategories)
plannerTaskRoleBasedRule1.SetPropertyRule(propertyRule)

rules := []graphmodels.PlannerTaskRoleBasedRuleable {
	plannerTaskRoleBasedRule,
	plannerTaskRoleBasedRule1,

}
editPolicy.SetRules(rules)
requestBody.SetEditPolicy(editPolicy)

result, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().TaskConfiguration().Patch(context.Background(), requestBody, nil)


```