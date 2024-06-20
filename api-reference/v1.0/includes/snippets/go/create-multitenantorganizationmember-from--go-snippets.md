---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewMultiTenantOrganizationMember()
tenantId := "4a12efe6-aa14-4d03-8dff-88fc89e2e2ad"
requestBody.SetTenantId(&tenantId) 
displayName := "Fabrikam"
requestBody.SetDisplayName(&displayName) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tenants, err := graphClient.TenantRelationships().MultiTenantOrganization().Tenants().Post(context.Background(), requestBody, nil)


```