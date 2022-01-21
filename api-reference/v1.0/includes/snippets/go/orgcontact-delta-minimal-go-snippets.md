---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.DeltaRequestBuilderGetQueryParameters{
	Select: "displayName,jobTitle,mail",
}
headers := map[string]string{
	"Prefer": "return=minimal"
}
options := &msgraphsdk.DeltaRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
result, err := graphClient.Contacts().Delta()().Get(options)


```