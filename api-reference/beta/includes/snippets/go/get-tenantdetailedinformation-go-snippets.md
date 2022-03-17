---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

tenantDetailedInformationId := "tenantDetailedInformation-id"
result, err := graphClient.TenantRelationships().ManagedTenants().TenantsDetailedInformationById(&tenantDetailedInformationId).Get(nil)


```