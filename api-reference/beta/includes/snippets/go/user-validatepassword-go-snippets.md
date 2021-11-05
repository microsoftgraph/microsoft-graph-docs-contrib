---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
	"password": "1234567890",
}
options := &msgraphsdk.UserRequestBuilderPostOptions{
	Body: requestBody,
}
userId := "user-id"
graphClient.UsersById(&userId).Post(options);


```