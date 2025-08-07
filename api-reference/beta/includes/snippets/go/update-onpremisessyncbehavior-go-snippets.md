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

requestBody := graphmodels.NewOnPremisesSyncBehavior()
isCloudManaged := true
requestBody.SetIsCloudManaged(&isCloudManaged) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
onPremisesSyncBehavior, err := graphClient.Groups().ByGroupId("group-id").OnPremisesSyncBehavior().Patch(context.Background(), requestBody, nil)


```