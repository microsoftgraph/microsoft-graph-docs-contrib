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

requestParameters := &graphidentitygovernance.EntitlementManagementAccessPackageSuggestionsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"accessPackage"},
}
configuration := &graphidentitygovernance.EntitlementManagementAccessPackageSuggestionsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
accessPackageSuggestions, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageSuggestions().ByAccessPackageSuggestionId("accessPackageSuggestion-id").Get(context.Background(), configuration)


```