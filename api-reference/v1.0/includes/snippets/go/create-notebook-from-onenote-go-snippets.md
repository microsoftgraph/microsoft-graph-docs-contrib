---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewNotebook()
displayName := "My Private notebook"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.NotebooksRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Onenote().Notebooks().Post(options);


```