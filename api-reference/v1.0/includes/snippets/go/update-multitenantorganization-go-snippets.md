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

requestBody := graphmodels.NewMultiTenantOrganization()
displayName := "Contoso organization"
requestBody.SetDisplayName(&displayName) 
description := "Multitenant organization between Contoso, Fabrikam, and Woodgrove Bank"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
multiTenantOrganization, err := graphClient.TenantRelationships().MultiTenantOrganization().Patch(context.Background(), requestBody, nil)


```