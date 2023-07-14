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


requestBody := graphmodels.NewExtension()
extensionName := "Com.Contoso.Deal"
requestBody.SetExtensionName(&extensionName) 
additionalData := map[string]interface{}{
	"companyName" : "Alpine Skis", 
	"dealValue" : int32(1010100) , 
	"expirationDate" : "2015-07-03T13:04:00.000Z", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Groups().ByGroupId("group-id").Events().ByEventId("event-id").Extensions().Post(context.Background(), requestBody, nil)


```