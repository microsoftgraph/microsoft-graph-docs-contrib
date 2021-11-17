---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
groupId := "ffffffff-ffff-ffff-ffff-ffffffffffff"
requestBody.SetGroupId(&groupId)
options := &msgraphsdk.RenewGroupRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.GroupLifecyclePolicies().RenewGroup().Post(options)


```