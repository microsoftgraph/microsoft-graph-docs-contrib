---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

userRegistrationDetailsId := "userRegistrationDetails-id"
result, err := graphClient.Reports().AuthenticationMethods().UserRegistrationDetailsById(&userRegistrationDetailsId).Get(nil)


```