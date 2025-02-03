---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

requestParameters := &graphidentitygovernance.EntitlementManagementAccessPackageAssignmentsAdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetQueryParameters{
	Expand: [] string {"target"},
}
configuration := &graphidentitygovernance.EntitlementManagementAccessPackageAssignmentsAdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageId := "{accessPackageId}"
incompatibleAccessPackageId := "{incompatibleAccessPackageId}"
additionalAccess, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignments().AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageId(&accessPackageId, &incompatibleAccessPackageId).GetAsAdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdGetResponse(context.Background(), configuration)


```