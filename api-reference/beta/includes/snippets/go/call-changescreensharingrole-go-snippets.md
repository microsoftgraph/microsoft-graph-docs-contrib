---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewRoleRequestBody()
role := "viewer"
requestBody.SetRole(&role)
options := &msgraphsdk.ChangeScreenSharingRoleRequestBuilderPostOptions{
	Body: requestBody,
}
callId := "call-id"
graphClient.Communications().CallsById(&callId).ChangeScreenSharingRole(call-id).Post(options)


```