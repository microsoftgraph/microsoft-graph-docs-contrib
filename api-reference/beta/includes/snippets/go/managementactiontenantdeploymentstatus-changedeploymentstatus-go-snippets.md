---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TenantRelationships/ManagedTenants/ManagementActionTenantDeploymentStatuses/ManagedTenantsChangeDeploymentStatus"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewChangeDeploymentStatusPostRequestBody()
tenantGroupId := "String"
requestBody.SetTenantGroupId(&tenantGroupId) 
tenantId := "String"
requestBody.SetTenantId(&tenantId) 
managementActionId := "String"
requestBody.SetManagementActionId(&managementActionId) 
managementTemplateId := "String"
requestBody.SetManagementTemplateId(&managementTemplateId) 
status := "String"
requestBody.SetStatus(&status) 

result, err := graphClient.TenantRelationships().ManagedTenants().ManagementActionTenantDeploymentStatuses().ManagedTenantsChangeDeploymentStatus().Post(context.Background(), requestBody, nil)


```