---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TenantRelationships/ManagedTenants/TenantTags/Item/MicrosoftGraphManagedTenantsUnassignTag"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnassignTagPostRequestBody()
tenantIds := []string {
	"String",

}
requestBody.SetTenantIds(tenantIds)

result, err := graphClient.TenantRelationships().ManagedTenants().TenantTags().ByTenantTagId("tenantTag-id").MicrosoftGraphManagedTenantsUnassignTag().Post(context.Background(), requestBody, nil)


```