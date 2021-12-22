---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UsersRequestBuilderGetQueryParameters{
	Filter: "endswith(mail,'a@contoso.com')",
	Orderby: "userPrincipalName",
	Count: true,
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.UsersRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
result, err := graphClient.Users().Get(options)


```