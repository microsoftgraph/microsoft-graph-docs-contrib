---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/education/classes/11006"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.Education().SchoolsById("educationSchool-id").Classes().$ref().Post(context.Background(), requestBody, nil)


```