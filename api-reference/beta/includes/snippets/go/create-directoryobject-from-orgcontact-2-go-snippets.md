---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetAdditionalData(map[string]interface{}{
}
options := &msgraphsdk.MemberOfRequestBuilderPostOptions{
	Body: requestBody,
}
orgContactId := "orgContact-id"
graphClient.ContactsById(&orgContactId).MemberOf().Post(options);


```