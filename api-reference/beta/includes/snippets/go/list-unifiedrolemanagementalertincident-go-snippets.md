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



requestTop := int32(5)

requestParameters := &graphidentitygovernance.IdentityGovernanceRoleManagementAlertsAlertItemAlertIncidentsRequestBuilderGetQueryParameters{
	Top: &requestTop,
}
configuration := &graphidentitygovernance.IdentityGovernanceRoleManagementAlertsAlertItemAlertIncidentsRequestBuilderGetRequestConfiguration{
	QueryParameters: requestParameters,
}

result, err := graphClient.IdentityGovernance().RoleManagementAlerts().Alerts().ByAlertId("unifiedRoleManagementAlert-id").AlertIncidents().Get(context.Background(), configuration)


```