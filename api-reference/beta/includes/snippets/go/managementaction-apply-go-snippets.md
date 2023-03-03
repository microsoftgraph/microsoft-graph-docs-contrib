---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewApplyPostRequestBody()
tenantId := "String"
requestBody.SetTenantId(&tenantId) 
tenantGroupId := "String"
requestBody.SetTenantGroupId(&tenantGroupId) 
managementTemplateId := "String"
requestBody.SetManagementTemplateId(&managementTemplateId) 

result, err := graphClient.TenantRelationships().ManagedTenants().ManagementActionsById("managementAction-id").ManagedTenantsApply().Post(context.Background(), requestBody, nil)


```