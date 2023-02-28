---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewGetNotebookFromWebUrlPostRequestBody()
webUrl := "webUrl value"
requestBody.SetWebUrl(&webUrl) 

result, err := graphClient.Me().Onenote().Notebooks().MicrosoftGraphGetNotebookFromWebUrl().Post(context.Background(), requestBody, nil)


```