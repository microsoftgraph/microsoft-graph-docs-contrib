---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//managedTenants"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTenantTag()
displayName := "Support"
requestBody.SetDisplayName(&displayName) 
description := "Tenants that have purchased extended support"
requestBody.SetDescription(&description) 

result, err := graphClient.TenantRelationships().ManagedTenants().TenantTags().Post(context.Background(), requestBody, nil)


```