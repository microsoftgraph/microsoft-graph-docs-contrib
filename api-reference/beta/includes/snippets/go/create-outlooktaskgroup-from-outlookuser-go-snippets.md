---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.NewOutlookTaskGroup()
name := "Leisure tasks"
requestBody.SetName(&name)
options := &msgraphsdk.TaskGroupsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().Outlook().TaskGroups().Post(options);


```