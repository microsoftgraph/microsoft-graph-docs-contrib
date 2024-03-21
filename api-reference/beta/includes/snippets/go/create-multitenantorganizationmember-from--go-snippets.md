---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewMultiTenantOrganizationMember()
tenantId := "4a12efe6-aa14-4d03-8dff-88fc89e2e2ad"
requestBody.SetTenantId(&tenantId) 
displayName := "Fabrikam"
requestBody.SetDisplayName(&displayName) 

tenants, err := graphClient.TenantRelationships().MultiTenantOrganization().Tenants().Post(context.Background(), requestBody, nil)


```