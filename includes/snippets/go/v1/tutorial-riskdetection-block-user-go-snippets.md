---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewConditionalAccessPolicy()
displayName := "Policy for risky sign-in block access"
requestBody.SetDisplayName(&displayName) 
state := graphmodels.ENABLED_CONDITIONALACCESSPOLICYSTATE 
requestBody.SetState(&state) 
conditions := graphmodels.NewConditionalAccessConditionSet()
signInRiskLevels := []graphmodels.RiskLevelable {
	riskLevel := graphmodels.HIGH_RISKLEVEL 
	conditions.SetRiskLevel(&riskLevel) 
	riskLevel := graphmodels.MEDIUM_RISKLEVEL 
	conditions.SetRiskLevel(&riskLevel)
}
conditions.SetSignInRiskLevels(signInRiskLevels)
applications := graphmodels.NewConditionalAccessApplications()
includeApplications := []string {
	"All",
}
applications.SetIncludeApplications(includeApplications)
conditions.SetApplications(applications)
users := graphmodels.NewConditionalAccessUsers()
includeUsers := []string {
	"4628e7df-dff3-407c-a08f-75f08c0806dc",
}
users.SetIncludeUsers(includeUsers)
conditions.SetUsers(users)
requestBody.SetConditions(conditions)
grantControls := graphmodels.NewConditionalAccessGrantControls()
operator := "OR"
grantControls.SetOperator(&operator) 
builtInControls := []graphmodels.ConditionalAccessGrantControlable {
	conditionalAccessGrantControl := graphmodels.BLOCK_CONDITIONALACCESSGRANTCONTROL 
	grantControls.SetConditionalAccessGrantControl(&conditionalAccessGrantControl)
}
grantControls.SetBuiltInControls(builtInControls)
requestBody.SetGrantControls(grantControls)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
policies, err := graphClient.Identity().ConditionalAccess().Policies().Post(context.Background(), requestBody, nil)


```