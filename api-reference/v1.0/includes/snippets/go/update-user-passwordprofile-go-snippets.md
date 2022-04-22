---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewUser()
passwordProfile := msgraphsdk.NewPasswordProfile()
requestBody.SetPasswordProfile(passwordProfile)
forceChangePasswordNextSignIn := false
passwordProfile.SetForceChangePasswordNextSignIn(&forceChangePasswordNextSignIn)
password := "xWwvJ]6NMw+bWH-d"
passwordProfile.SetPassword(&password)
options := &msgraphsdk.UserRequestBuilderPatchOptions{
	Body: requestBody,
}
userId := "user-id"
graphClient.UsersById(&userId).Patch(options)


```