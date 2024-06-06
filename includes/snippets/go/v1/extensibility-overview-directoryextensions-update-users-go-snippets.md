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

requestBody := graphmodels.NewUser()
additionalData := map[string]interface{}{
	extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable := null
requestBody.SetExtension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable(&extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable) 
	"extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker" : "E4", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
users, err := graphClient.Users().ByUserId("user-id").Patch(context.Background(), requestBody, nil)


```