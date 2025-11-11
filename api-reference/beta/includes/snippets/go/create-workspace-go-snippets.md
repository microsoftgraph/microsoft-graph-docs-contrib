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

requestBody := graphmodels.NewPlace()
parentId := "f7de7265-e420-47b4-9d49-28d728716241"
requestBody.SetParentId(&parentId) 
displayName := "testSpace001"
requestBody.SetDisplayName(&displayName) 
tags := []string {
	"test",
}
requestBody.SetTags(tags)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
places, err := graphClient.Places().Post(context.Background(), requestBody, nil)


```