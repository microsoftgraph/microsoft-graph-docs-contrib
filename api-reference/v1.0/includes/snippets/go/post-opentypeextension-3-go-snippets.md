---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"extensionName" : "Com.Contoso.Deal", 
	"companyName" : "Alpine Skis", 
	"dealValue" : int32(1010100) , 
	"expirationDate" : "2015-07-03T13:04:00.000Z", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Groups().ByGroupId("group-id").Events().ByEventId("event-id").Extensions().Post(context.Background(), requestBody, nil)


```