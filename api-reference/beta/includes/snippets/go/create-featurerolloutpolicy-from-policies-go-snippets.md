---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
featureRolloutPolicies, err := graphClient.Policies().FeatureRolloutPolicies().Post(context.Background(), requestBody, nil)


```