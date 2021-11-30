---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.ServicePrincipalsRequestBuilderGetQueryParameters{
	Filter: "startswith(displayName,%20'a')",
	Count: true,
	Top: 1,
	Orderby: "displayName",
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.ServicePrincipalsRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
result, err := graphClient.ServicePrincipals().Get(options)


```