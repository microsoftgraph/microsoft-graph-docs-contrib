---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").ResourcesById("educationAssignmentResource-id").Delete(context.Background(), nil)


```