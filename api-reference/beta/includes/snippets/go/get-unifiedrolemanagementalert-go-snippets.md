---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphidentitygovernance "github.com/microsoftgraph/msgraph-beta-sdk-go/identitygovernance"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestParameters := &graphidentitygovernance.IdentityGovernanceRoleManagementAlertsAlertItemRequestBuilderGetQueryParameters{
	Expand: [] string {"alertDefinition","alertConfiguration","alertIncidents"},
}
configuration := &graphidentitygovernance.IdentityGovernanceRoleManagementAlertsAlertItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

alerts, err := graphClient.IdentityGovernance().RoleManagementAlerts().Alerts().ByUnifiedRoleManagementAlertId("unifiedRoleManagementAlert-id").Get(context.Background(), configuration)


```