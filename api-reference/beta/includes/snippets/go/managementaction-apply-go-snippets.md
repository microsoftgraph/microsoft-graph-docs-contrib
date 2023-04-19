---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TenantRelationships/ManagedTenants/ManagementActions/Item/ManagedTenantsApply"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewApplyPostRequestBody()
tenantId := "String"
requestBody.SetTenantId(&tenantId) 
tenantGroupId := "String"
requestBody.SetTenantGroupId(&tenantGroupId) 
managementTemplateId := "String"
requestBody.SetManagementTemplateId(&managementTemplateId) 

result, err := graphClient.TenantRelationships().ManagedTenants().ManagementActions().ByManagementActionId("managementAction-id").ManagedTenantsApply().Post(context.Background(), requestBody, nil)


```