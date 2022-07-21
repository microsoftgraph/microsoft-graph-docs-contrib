---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewTenantSearchPostRequestBody()
tenantId := "String"
requestBody.SetTenantId(&tenantId) 

result, err := graphClient.TenantRelationships().ManagedTenants().TenantGroups().TenantSearch().Post(requestBody)


```