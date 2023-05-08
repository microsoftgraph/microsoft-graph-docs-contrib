---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models//managedTenants"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTenantTag()
displayName := "Onboarding"
requestBody.SetDisplayName(&displayName) 
description := "Tenants that we are currently onboarding"
requestBody.SetDescription(&description) 

result, err := graphClient.TenantRelationships().ManagedTenants().TenantTags().ByTenantTagId("tenantTag-id").Patch(context.Background(), requestBody, nil)


```