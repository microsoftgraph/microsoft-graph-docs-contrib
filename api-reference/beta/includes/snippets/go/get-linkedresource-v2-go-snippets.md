---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


result, err := graphClient.Me().Tasks().ListsById("baseTaskList-id").TasksById("baseTask-id").LinkedResourcesById("linkedResource_v2-id").Get(context.Background(), nil)


```