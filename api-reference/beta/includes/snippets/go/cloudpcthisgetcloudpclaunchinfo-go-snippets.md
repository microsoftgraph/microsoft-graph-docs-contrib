---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


result, err := graphClient.Me().CloudPCsById("cloudPC-id").GetCloudPcLaunchInfo().Get(context.Background(), nil)


```