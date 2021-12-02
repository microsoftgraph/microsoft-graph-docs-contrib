---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetGroupIds( []String {
	"groupIds-value",
}
options := &msgraphsdk.CheckMemberGroupsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().CheckMemberGroups().Post(options)


```