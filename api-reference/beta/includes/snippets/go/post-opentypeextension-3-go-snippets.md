---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewExtension()
additionalData := map[string]interface{}{
	"extensionName" : "Com.Contoso.Deal", 
	"companyName" : "Alpine Skis", 
	"dealValue" : int32(1010100) , 
	"expirationDate" : "2015-07-03T13:04:00.000Z", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.GroupsById("group-id").EventsById("event-id").Extensions().Post(context.Background(), requestBody, nil)


```