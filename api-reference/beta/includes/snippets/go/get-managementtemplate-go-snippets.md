---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

managementTemplateId := "managementTemplate-id"
result, err := graphClient.TenantRelationships().ManagedTenants().ManagementTemplatesById(&managementTemplateId).Get(nil)


```