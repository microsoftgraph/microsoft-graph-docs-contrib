---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodelsmanagedtenants "github.com/microsoftgraph/msgraph-beta-sdk-go/models/managedtenants"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodelsmanagedtenants.NewTenantTag()
displayName := "Onboarding"
requestBody.SetDisplayName(&displayName) 
description := "Tenants that we are currently onboarding"
requestBody.SetDescription(&description) 

tenantTags, err := graphClient.TenantRelationships().ManagedTenants().TenantTags().ByTenantTagId("tenantTag-id").Patch(context.Background(), requestBody, nil)


```