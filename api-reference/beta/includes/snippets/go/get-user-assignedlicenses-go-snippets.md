---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.UsersRequestBuilderGetQueryParameters{
	Select: "id,mail,assignedLicenses",
	Filter: "assignedLicenses/any(u:u/skuId%20eq%20cbdc14ab-d96c-4c30-b9f4-6ada7cdc1d46)",
}
options := &msgraphsdk.UsersRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.Users().Get(options)


```