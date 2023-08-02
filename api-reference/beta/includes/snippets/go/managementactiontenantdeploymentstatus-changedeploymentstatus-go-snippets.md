---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphtenantrelationships "github.com/microsoftgraph/msgraph-beta-sdk-go/tenantrelationships"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphtenantrelationships.NewChangeDeploymentStatusPostRequestBody()
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

microsoft.graph.managedTenants.changeDeploymentStatus, err := graphClient.TenantRelationships().ManagedTenants().ManagementActionTenantDeploymentStatuses().MicrosoftGraphManagedTenantsChangeDeploymentStatus().Post(context.Background(), requestBody, nil)


```