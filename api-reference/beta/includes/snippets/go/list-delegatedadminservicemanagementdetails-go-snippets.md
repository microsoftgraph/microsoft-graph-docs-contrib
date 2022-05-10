---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

delegatedAdminCustomerId := "delegatedAdminCustomer-id"
result, err := graphClient.TenantRelationships().DelegatedAdminCustomersById(&delegatedAdminCustomerId).ServiceManagementDetails().Get()


```