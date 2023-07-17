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


requestBody := graphtenantrelationships.NewTenantSearchPostRequestBody()
tenantId := "String"
requestBody.SetTenantId(&tenantId) 

result, err := graphClient.TenantRelationships().ManagedTenants().TenantGroups().MicrosoftGraphManagedTenantsTenantSearch().Post(context.Background(), requestBody, nil)


```