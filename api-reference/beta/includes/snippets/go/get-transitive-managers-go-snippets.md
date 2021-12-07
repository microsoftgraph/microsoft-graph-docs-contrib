---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.MeRequestBuilderGetQueryParameters{
	Expand: "manager($levels=max;$select=id,displayName)",
	Select: "id,displayName",
	Count: true,
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.MeRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
result, err := graphClient.Me().Get(options)


```