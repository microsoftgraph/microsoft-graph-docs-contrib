---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
requestBody.SetGroupIds( []String {
	"fee2c45b-915a-4a64-b130-f4eb9e75525e",
	"4fe90ae7-065a-478b-9400-e0a0e1cbd540",
}
options := &msgraphsdk.CheckMemberGroupsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().CheckMemberGroups().Post(options)


```