---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
id := "id-value"
requestBody.SetId(&id)
groupId := "groupId-value"
requestBody.SetGroupId(&groupId)
options := &msgraphsdk.CopyToSectionRequestBuilderPostOptions{
	Body: requestBody,
}
onenotePageId := "onenotePage-id"
result, err := graphClient.Me().Onenote().PagesById(&onenotePageId).CopyToSection().Post(options)


```