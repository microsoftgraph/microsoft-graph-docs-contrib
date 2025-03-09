---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphsolutions "github.com/microsoftgraph/msgraph-beta-sdk-go/solutions"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\"")

configuration := &graphsolutions.BusinessScenariosItemPlannerTaskConfigurationRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewPlannerTaskConfiguration()
editPolicy := graphmodels.NewPlannerTaskPolicy()


plannerTaskRoleBasedRule := graphmodels.NewPlannerTaskRoleBasedRule()
defaultRule := "block"
plannerTaskRoleBasedRule.SetDefaultRule(&defaultRule) 
propertyRule := graphmodels.NewPlannerTaskPropertyRule()
ruleKind := graphmodels.TASKRULE_PLANNERRULEKIND 
propertyRule.SetRuleKind(&ruleKind) 
references := graphmodels.NewPlannerFieldRules()
defaultRules := []string {
	"allow",
}
references.SetDefaultRules(defaultRules)
overrides := []graphmodels.PlannerRuleOverrideable {

}
references.SetOverrides(overrides)
propertyRule.SetReferences(references)
checkLists := graphmodels.NewPlannerFieldRules()
defaultRules := []string {
	"allow",
}
checkLists.SetDefaultRules(defaultRules)
overrides := []graphmodels.PlannerRuleOverrideable {

}
checkLists.SetOverrides(overrides)
propertyRule.SetCheckLists(checkLists)
assignments := graphmodels.NewPlannerFieldRules()
defaultRules := []string {
	"allow",
}
assignments.SetDefaultRules(defaultRules)


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
	"allow",
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
plannerTaskRoleBasedRule.SetPropertyRule(propertyRule)
additionalData := map[string]interface{}{
userType := graphmodels.NewPlannerRelationshipBasedUserType()
	role := graphmodels.DEFAULTRULES_PLANNERRELATIONSHIPUSERROLES 
	userType.SetRole(&role) 
additionalData := map[string]interface{}{
		"selectionKind" : "relationship", 
}
	userType.SetAdditionalData(additionalData)
	plannerTaskRoleBasedRule.SetUserType(userType)
}
plannerTaskRoleBasedRule.SetAdditionalData(additionalData)

rules := []graphmodels.PlannerTaskRoleBasedRuleable {
	plannerTaskRoleBasedRule,
}
editPolicy.SetRules(rules)
requestBody.SetEditPolicy(editPolicy)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
taskConfiguration, err := graphClient.Solutions().BusinessScenarios().ByBusinessScenarioId("businessScenario-id").Planner().TaskConfiguration().Patch(context.Background(), requestBody, configuration)


```