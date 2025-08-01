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

requestParameters := &graphidentitygovernance.RoleManagementAlertsAlertsItemRequestBuilderGetQueryParameters{
	Expand: [] string {"*"},
}
configuration := &graphidentitygovernance.RoleManagementAlertsAlertsItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alerts, err := graphClient.IdentityGovernance().RoleManagementAlerts().Alerts().ByUnifiedRoleManagementAlertId("unifiedRoleManagementAlert-id").Get(context.Background(), configuration)


```