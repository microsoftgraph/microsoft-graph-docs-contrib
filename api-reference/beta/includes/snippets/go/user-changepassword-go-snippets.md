---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
currentPassword := "xWwvJ]6NMw+bWH-d"
requestBody.SetCurrentPassword(&currentPassword)
newPassword := "0eM85N54wFxWwvJ]"
requestBody.SetNewPassword(&newPassword)
options := &msgraphsdk.ChangePasswordRequestBuilderPostOptions{
	Body: requestBody,
}
graphClient.Me().ChangePassword().Post(options);


```