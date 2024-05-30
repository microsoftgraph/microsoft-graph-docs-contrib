---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphtenantrelationships "github.com/microsoftgraph/msgraph-beta-sdk-go/tenantrelationships"
	  //other-imports
)

requestBody := graphtenantrelationships.NewUnassignTagPostRequestBody()
tenantIds := []string {
	"String",
}
requestBody.SetTenantIds(tenantIds)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
microsoftGraphManagedTenantsUnassignTag, err := graphClient.TenantRelationships().ManagedTenants().TenantTags().ByTenantTagId("tenantTag-id").MicrosoftGraphManagedTenantsUnassignTag().Post(context.Background(), requestBody, nil)


```