---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").Rubric().$ref().Delete(context.Background(), nil)


```