---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnifiedRoleManagementAlert()
isActive := false
requestBody.SetIsActive(&isActive) 

result, err := graphClient.IdentityGovernance().RoleManagementAlerts().Alerts().ByAlertId("unifiedRoleManagementAlert-id").Patch(context.Background(), requestBody, nil)


```