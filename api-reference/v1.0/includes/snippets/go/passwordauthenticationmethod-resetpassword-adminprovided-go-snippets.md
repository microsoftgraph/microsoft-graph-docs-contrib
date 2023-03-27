---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewResetPasswordPostRequestBody()
newPassword := "Cuyo5459"
requestBody.SetNewPassword(&newPassword) 

result, err := graphClient.UsersById("user-id").Authentication().MethodsById("authenticationMethod-id").ResetPassword().Post(context.Background(), requestBody, nil)


```