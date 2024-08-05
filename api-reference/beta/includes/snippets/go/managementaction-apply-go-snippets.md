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

requestBody := graphtenantrelationships.NewApplyPostRequestBody()
tenantId := "String"
requestBody.SetTenantId(&tenantId) 
tenantGroupId := "String"
requestBody.SetTenantGroupId(&tenantGroupId) 
managementTemplateId := "String"
requestBody.SetManagementTemplateId(&managementTemplateId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphManagedTenantsApply, err := graphClient.TenantRelationships().ManagedTenants().ManagementActions().ByManagementActionId("managementAction-id").MicrosoftGraphManagedTenantsApply().Post(context.Background(), requestBody, nil)


```