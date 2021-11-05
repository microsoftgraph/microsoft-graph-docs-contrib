---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/v1.0/users/{id}",
}
options := &msgraphsdk.RefRequestBuilderPutOptions{
	Body: requestBody,
}
userId := "user-id"
graphClient.UsersById(&userId).Manager().$ref().Put(options);


```