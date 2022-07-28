---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewRetentionEventType()
"@odata.type" := "#microsoft.graph.security.retentionEventType"
requestBody.Set"@odata.type"(&"@odata.type") 
displayName := "String"
requestBody.SetDisplayName(&displayName) 
description := "String"
requestBody.SetDescription(&description) 
createdBy := graphmodels.NewIdentitySet()
"@odata.type" := "microsoft.graph.identitySet"
createdBy.Set"@odata.type"(&"@odata.type") 
requestBody.SetCreatedBy(createdBy)

result, err := graphClient.Security().TriggerTypes().RetentionEventTypes().Post(requestBody)


```