---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphtenantrelationships "github.com/microsoftgraph/msgraph-beta-sdk-go/tenantrelationships"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphManagedTenantsChangeDeploymentStatus, err := graphClient.TenantRelationships().ManagedTenants().ManagementActionTenantDeploymentStatuses().MicrosoftGraphManagedTenantsChangeDeploymentStatus().Post(context.Background(), requestBody, nil)


```