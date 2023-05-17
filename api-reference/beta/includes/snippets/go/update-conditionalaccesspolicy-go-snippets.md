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


requestBody := graphmodels.NewConditionalAccessPolicy()
conditions := graphmodels.NewConditionalAccessConditionSet()
signInRiskLevels := []graphmodels.RiskLevelable {
	riskLevel := graphmodels.HIGH_RISKLEVEL 
	conditions.SetRiskLevel(&riskLevel) 
	riskLevel := graphmodels.MEDIUM_RISKLEVEL 
	conditions.SetRiskLevel(&riskLevel) 
	riskLevel := graphmodels.LOW_RISKLEVEL 
	conditions.SetRiskLevel(&riskLevel) 

}
conditions.SetSignInRiskLevels(signInRiskLevels)
requestBody.SetConditions(conditions)

result, err := graphClient.Identity().ConditionalAccess().Policies().ByPolicieId("conditionalAccessPolicy-id").Patch(context.Background(), requestBody, nil)


```