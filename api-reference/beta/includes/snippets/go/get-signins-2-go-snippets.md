---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestParameters := &msgraphsdk.SignInsRequestBuilderGetQueryParameters{
	Filter: "startsWith(appDisplayName,'Azure')",
	Top: 10,
}
options := &msgraphsdk.SignInsRequestBuilderGetOptions{
	Q: requestParameters,
}
result, err := graphClient.AuditLogs().SignIns().Get(options)


```