---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

signInId := "signIn-id"
result, err := graphClient.AuditLogs().SignInsById(&signInId).Get(options)


```