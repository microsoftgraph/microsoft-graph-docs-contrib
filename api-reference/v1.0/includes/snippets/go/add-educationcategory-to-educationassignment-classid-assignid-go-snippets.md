---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)


graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").CategoriesById("educationCategory-id").$ref().Delete(context.Background(), nil)


```