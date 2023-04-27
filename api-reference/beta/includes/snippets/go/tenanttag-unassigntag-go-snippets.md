---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/TenantRelationships/ManagedTenants/TenantTags/Item/ManagedTenantsUnassignTag"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnassignTagPostRequestBody()
tenantIds := []string {
	"String",

}
requestBody.SetTenantIds(tenantIds)

result, err := graphClient.TenantRelationships().ManagedTenants().TenantTags().ByTenantTagId("tenantTag-id").ManagedTenantsUnassignTag().Post(context.Background(), requestBody, nil)


```