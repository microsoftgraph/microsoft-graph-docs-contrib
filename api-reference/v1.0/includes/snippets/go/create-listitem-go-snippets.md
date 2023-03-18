---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewListItem()
fields := graphmodels.NewFieldValueSet()
additionalData := map[string]interface{}{
	"title" : "Widget", 
	"color" : "Purple", 
	"weight" : int32(32) , 
}
fields.SetAdditionalData(additionalData)
requestBody.SetFields(fields)

result, err := graphClient.SitesById("site-id").ListsById("list-id").Items().Post(context.Background(), requestBody, nil)


```