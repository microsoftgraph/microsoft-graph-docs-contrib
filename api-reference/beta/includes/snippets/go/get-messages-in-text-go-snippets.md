---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.MessagesRequestBuilderGetQueryParameters{
	Select: "subject,body,bodyPreview,uniqueBody",
}
headers := map[string]string{
	"Prefer": "outlook.body-content-type="text""
}
options := &msgraphsdk.MessagesRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
result, err := graphClient.Me().Messages().Get(options)


```