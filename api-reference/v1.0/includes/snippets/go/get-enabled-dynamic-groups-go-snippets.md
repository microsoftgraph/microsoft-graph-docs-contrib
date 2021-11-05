---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestParameters := &msgraphsdk.GroupsRequestBuilderGetQueryParameters{
	Filter: "mailEnabled%20eq%20false%20and%20securityEnabled%20eq%20true%20and%20NOT)%20and%20membershipRuleProcessingState%20eq%20'On'",
	Count: true,
	Select: "id,membershipRule,membershipRuleProcessingState",
}
headers := map[string]string{
	"ConsistencyLevel": "eventual"
}
options := &msgraphsdk.GroupsRequestBuilderGetOptions{
	Q: requestParameters,
	H: headers,
}
result, err := graphClient.Groups().Get(options);


```