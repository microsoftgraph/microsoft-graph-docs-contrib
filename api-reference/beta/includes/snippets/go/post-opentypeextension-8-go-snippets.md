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

requestBody := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"extensionName" : "myCustomExtension", 
	"myCustomString" : "Contoso data", 
	myCustomBool := false
requestBody.SetMyCustomBool(&myCustomBool) 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
extensions, err := graphClient.Sites().BySiteId("site-id").Extensions().Post(context.Background(), requestBody, nil)


```