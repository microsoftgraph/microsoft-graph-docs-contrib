---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.GroupRequestBuilderGetQueryParameters{
	Select: "displayName,description,mailNickname",
}
headers := map[string]string{
	"Prefer": "return=minimal"
}
options := &msgraphsdk.GroupRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
groupId := "group-id"
result, err := graphClient.GroupsById(&groupId).Get(options)


```