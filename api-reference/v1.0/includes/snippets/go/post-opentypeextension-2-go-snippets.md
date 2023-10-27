---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewExtension()
extensionName := "Com.Contoso.Referral"
requestBody.SetExtensionName(&extensionName) 
additionalData := map[string]interface{}{
	"companyName" : "Wingtip Toys", 
	"dealValue" : int32(500050) , 
	"expirationDate" : "2015-12-03T10:00:00.000Z", 
}
requestBody.SetAdditionalData(additionalData)

extensions, err := graphClient.Me().Messages().ByMessageId("message-id").Extensions().Post(context.Background(), requestBody, nil)


```