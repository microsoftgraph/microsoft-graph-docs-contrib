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

requestBody := graphmodels.NewActivityBasedTimeoutPolicy()
displayName := "Idle timeout for all apps"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
activityBasedTimeoutPolicies, err := graphClient.Policies().ActivityBasedTimeoutPolicies().ByActivityBasedTimeoutPolicyId("activityBasedTimeoutPolicy-id").Patch(context.Background(), requestBody, nil)


```