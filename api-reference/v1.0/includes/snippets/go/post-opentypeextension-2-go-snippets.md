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

requestBody := graphmodels.NewExtension()
extensionName := "Com.Contoso.Referral"
requestBody.SetExtensionName(&extensionName) 
additionalData := map[string]interface{}{
	"companyName" : "Wingtip Toys", 
	"dealValue" : int32(500050) , 
	"expirationDate" : "2015-12-03T10:00:00.000Z", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
extensions, err := graphClient.Me().Messages().ByMessageId("message-id").Extensions().Post(context.Background(), requestBody, nil)


```