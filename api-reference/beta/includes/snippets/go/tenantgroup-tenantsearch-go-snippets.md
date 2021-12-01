---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.New()
tenantId := "String"
requestBody.SetTenantId(&tenantId)
options := &msgraphsdk.TenantSearchRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.TenantRelationships().ManagedTenants().TenantGroups().TenantSearch().Post(options)


```