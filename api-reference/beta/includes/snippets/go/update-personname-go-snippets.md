---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewPersonName()
nickname := "Kesha"
requestBody.SetNickname(&nickname)
options := &msgraphsdk.PersonNameRequestBuilderPatchOptions{
	Body: requestBody,
}
personNameId := "personName-id"
graphClient.Me().Profile().NamesById(&personNameId).Patch(options);


```