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

requestParameters := &graphidentitygovernance.EntitlementManagementAssignmentsAdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetQueryParameters{
	Expand: [] string {"target"},
}
configuration := &graphidentitygovernance.EntitlementManagementAssignmentsAdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageId := "{accessPackageId}"
incompatibleAccessPackageId := "{incompatibleAccessPackageId}"
additionalAccess, err := graphClient.IdentityGovernance().EntitlementManagement().Assignments().AdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageId(&accessPackageId, &incompatibleAccessPackageId).GetAsAdditionalAccessWithAccessPackageIdWithIncompatibleAccessPackageIdGetResponse(context.Background(), configuration)


```