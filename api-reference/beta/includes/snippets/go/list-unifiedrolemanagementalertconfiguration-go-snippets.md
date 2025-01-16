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


requestFilter := "scopeId eq '/' and scopeType eq 'DirectoryRole'"

requestParameters := &graphidentitygovernance.RoleManagementAlertsAlertConfigurationsRequestBuilderGetQueryParameters{
	Filter: &requestFilter,
	Expand: [] string {"alertDefinition"},
}
configuration := &graphidentitygovernance.RoleManagementAlertsAlertConfigurationsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alertConfigurations, err := graphClient.IdentityGovernance().RoleManagementAlerts().AlertConfigurations().Get(context.Background(), configuration)


```