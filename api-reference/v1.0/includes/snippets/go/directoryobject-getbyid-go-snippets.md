---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetIds( []String {
	"84b80893874940a3-97b7-68513b600544",
	"5d6059b6368d-45f8-91e18e07d485f1d0",
}
requestBody.SetTypes( []String {
	"user",
}
options := &msgraphsdk.GetByIdsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.DirectoryObjects().GetByIds().Post(options)


```