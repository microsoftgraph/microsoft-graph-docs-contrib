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


requestBody := graphtenantrelationships.NewApplyPostRequestBody()
tenantId := "String"
requestBody.SetTenantId(&tenantId) 
tenantGroupId := "String"
requestBody.SetTenantGroupId(&tenantGroupId) 
managementTemplateId := "String"
requestBody.SetManagementTemplateId(&managementTemplateId) 

result, err := graphClient.TenantRelationships().ManagedTenants().ManagementActions().ByManagementActionId("managementAction-id").MicrosoftGraphManagedTenantsApply().Post(context.Background(), requestBody, nil)


```