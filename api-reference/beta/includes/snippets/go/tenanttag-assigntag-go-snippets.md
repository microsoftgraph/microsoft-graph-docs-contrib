---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TenantRelationships/ManagedTenants/TenantTags/Item/MicrosoftGraphManagedTenantsAssignTag"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAssignTagPostRequestBody()
tenantIds := []string {
	"String",

}
requestBody.SetTenantIds(tenantIds)

result, err := graphClient.TenantRelationships().ManagedTenants().TenantTags().ByTenantTagId("tenantTag-id").MicrosoftGraphManagedTenantsAssignTag().Post(context.Background(), requestBody, nil)


```