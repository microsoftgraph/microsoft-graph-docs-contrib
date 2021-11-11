---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
webUrl := "webUrl value"
requestBody.SetWebUrl(&webUrl)
options := &msgraphsdk.GetNotebookFromWebUrlRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Onenote().Notebooks().GetNotebookFromWebUrl().Post(options)


```