---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewChangePasswordPostRequestBody()
currentPassword := "xWwvJ]6NMw+bWH-d"
requestBody.SetCurrentPassword(&currentPassword) 
newPassword := "0eM85N54wFxWwvJ]"
requestBody.SetNewPassword(&newPassword) 

graphClient.Me().ChangePassword().Post(context.Background(), requestBody, nil)


```