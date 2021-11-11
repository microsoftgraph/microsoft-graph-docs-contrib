---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.GroupsRequestBuilderGetQueryParameters{
	Count: true,
	Filter: "hasMembersWithLicenseErrors%20eq%20true",
	Select: "id,displayName",
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.GroupsRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
result, err := graphClient.Groups().Get(options)


```