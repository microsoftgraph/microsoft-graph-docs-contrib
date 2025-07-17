---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-sdk-go/identitygovernance"
	  //other-imports
)


requestFilter := "(originSystem eq 'AadGroup' and resource/id eq 'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')"

requestParameters := &graphidentitygovernance.EntitlementManagementCatalogsItemResourceRolesRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"resource"},
}
configuration := &graphidentitygovernance.EntitlementManagementCatalogsItemResourceRolesRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
resourceRoles, err := graphClient.IdentityGovernance().EntitlementManagement().Catalogs().ByAccessPackageCatalogId("accessPackageCatalog-id").ResourceRoles().Get(context.Background(), configuration)


```