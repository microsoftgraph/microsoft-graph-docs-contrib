---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsmanagedtenants "github.com/microsoftgraph/msgraph-beta-sdk-go/models/managedtenants"
	  //other-imports
)

requestBody := graphmodelsmanagedtenants.NewTenantTag()
displayName := "Support"
requestBody.SetDisplayName(&displayName) 
description := "Tenants that have purchased extended support"
requestBody.SetDescription(&description) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
tenantTags, err := graphClient.TenantRelationships().ManagedTenants().TenantTags().Post(context.Background(), requestBody, nil)


```