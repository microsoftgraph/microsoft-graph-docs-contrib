---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.ApplicationsById("application-id").AppManagementPolicies().$ref().Post(context.Background(), requestBody, nil)


```