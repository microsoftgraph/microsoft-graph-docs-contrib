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


requestParameters := &graphidentitygovernance.IdentityGovernanceRoleManagementAlertsAlertConfigurationItemRequestBuilderGetQueryParameters{
	Expand: [] string {"alertDefinition"},
}
configuration := &graphidentitygovernance.IdentityGovernanceRoleManagementAlertsAlertConfigurationItemRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

alertConfigurations, err := graphClient.IdentityGovernance().RoleManagementAlerts().AlertConfigurations().ByUnifiedRoleManagementAlertConfigurationId("unifiedRoleManagementAlertConfiguration-id").Get(context.Background(), configuration)


```