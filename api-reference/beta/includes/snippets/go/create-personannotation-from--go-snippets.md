---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewPersonAnnotation()
detail := msgraphsdk.NewItemBody()
requestBody.SetDetail(detail)
contentType := "text"
detail.SetContentType(&contentType)
content := "I am originally from Australia, but grew up in Moscow, Russia."
detail.SetContent(&content)
displayName := "About Me"
requestBody.SetDisplayName(&displayName)
options := &msgraphsdk.NotesRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Profile().Notes().Post(options)


```