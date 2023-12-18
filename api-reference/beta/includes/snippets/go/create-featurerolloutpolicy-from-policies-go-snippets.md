---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewFeatureRolloutPolicy()
displayName := "PassthroughAuthentication rollout policy"
requestBody.SetDisplayName(&displayName) 
description := "PassthroughAuthentication rollout policy"
requestBody.SetDescription(&description) 
feature := graphmodels.PASSTHROUGHAUTHENTICATION_STAGEDFEATURENAME 
requestBody.SetFeature(&feature) 
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
isAppliedToOrganization := false
requestBody.SetIsAppliedToOrganization(&isAppliedToOrganization) 

featureRolloutPolicies, err := graphClient.Policies().FeatureRolloutPolicies().Post(context.Background(), requestBody, nil)


```