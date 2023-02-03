---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")

configuration := &graphconfig.MeOutlookTaskItemMicrosoft.graph.completeRequestBuilderPostRequestConfiguration{
	Headers: headers,
}

result, err := graphClient.Me().Outlook().TasksById("outlookTask-id").Complete().Post(context.Background(), configuration)


```