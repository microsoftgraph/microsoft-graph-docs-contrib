---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TenantRelationships/ManagedTenants/TenantGroups/ManagedTenantsTenantSearch"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTenantSearchPostRequestBody()
tenantId := "String"
requestBody.SetTenantId(&tenantId) 

result, err := graphClient.TenantRelationships().ManagedTenants().TenantGroups().ManagedTenantsTenantSearch().Post(context.Background(), requestBody, nil)


```