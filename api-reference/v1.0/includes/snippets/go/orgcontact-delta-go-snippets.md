---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

orgContactId := "orgContact-id"
result, err := graphClient.ContactsById(&orgContactId).Get(options)


```