---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

authenticationContextClassReferenceId := "authenticationContextClassReference-id"
result, err := graphClient.Identity().ConditionalAccess().AuthenticationContextClassReferencesById(&authenticationContextClassReferenceId).Get(nil)


```