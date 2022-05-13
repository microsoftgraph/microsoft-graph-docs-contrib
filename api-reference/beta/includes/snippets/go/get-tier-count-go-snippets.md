---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.DirectoryObjectRequestBuilderGetQueryParameters{
	Count: true,
	OrderBy: "displayName",
	Search: "%22displayName:tier%22",
	Select: "displayName,id",
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.DirectoryObjectRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
	Headers: headers,
}
groupId := "group-id"
directoryObjectId := "directoryObject-id"
result, err := graphClient.GroupsById(&groupId).TransitiveMembersById(&directoryObjectId).GetWithRequestConfigurationAndResponseHandler(options, nil)


```