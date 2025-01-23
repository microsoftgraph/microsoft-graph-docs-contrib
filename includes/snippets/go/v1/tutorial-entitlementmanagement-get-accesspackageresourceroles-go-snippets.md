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


requestFilter := "(originSystem eq 'AadGroup' and displayName eq 'Member' and resource/id eq '274a1e21c5-8a76-4578-acb1-641160e076e')"

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