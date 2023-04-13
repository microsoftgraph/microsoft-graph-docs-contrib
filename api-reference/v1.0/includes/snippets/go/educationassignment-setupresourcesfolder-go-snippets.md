---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSetUpResourcesFolderPostRequestBody()

result, err := graphClient.Education().ClassesById("educationClass-id").AssignmentsById("educationAssignment-id").SetUpResourcesFolder().Post(context.Background(), requestBody, nil)


```