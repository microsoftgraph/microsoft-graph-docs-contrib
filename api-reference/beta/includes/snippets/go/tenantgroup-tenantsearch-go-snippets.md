---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TenantRelationships/ManagedTenants/TenantGroups/MicrosoftGraphManagedTenantsTenantSearch"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTenantSearchPostRequestBody()
tenantId := "String"
requestBody.SetTenantId(&tenantId) 

result, err := graphClient.TenantRelationships().ManagedTenants().TenantGroups().MicrosoftGraphManagedTenantsTenantSearch().Post(context.Background(), requestBody, nil)


```