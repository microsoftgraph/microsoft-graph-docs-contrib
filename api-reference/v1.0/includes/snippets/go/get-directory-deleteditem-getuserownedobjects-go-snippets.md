---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewDeletedItem()
additionalData := map[string]interface{}{
	"userId" : "55ac777c-109e-4022-b58c-470c8fcb6892", 
	"type" : "Group", 
}
requestBody.SetAdditionalData(additionalData)

graphClient.Directory().DeletedItemsById("directoryObject-id").Post(context.Background(), requestBody, nil)


```