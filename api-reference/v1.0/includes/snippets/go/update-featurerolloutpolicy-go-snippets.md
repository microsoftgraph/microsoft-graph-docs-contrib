---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewFeatureRolloutPolicy()
displayName := "PasswordHashSync Rollout Policy"
requestBody.SetDisplayName(&displayName) 
description := "PasswordHashSync Rollout Policy"
requestBody.SetDescription(&description) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isAppliedToOrganization := false
requestBody.SetIsAppliedToOrganization(&isAppliedToOrganization) 

result, err := graphClient.Policies().FeatureRolloutPolicies().ByFeatureRolloutPolicieId("featureRolloutPolicy-id").Patch(context.Background(), requestBody, nil)


```