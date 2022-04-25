---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"@odata.id": "https://graph.microsoft.com/beta/users/{id}",
}
options := &msgraphsdk.UserRequestBuilderPostOptions{
	Body: requestBody,
}
printerShareId := "printerShare-id"
userId := "user-id"
graphClient.Print().SharesById(&printerShareId).AllowedUsersById(&userId).Post(options)


```