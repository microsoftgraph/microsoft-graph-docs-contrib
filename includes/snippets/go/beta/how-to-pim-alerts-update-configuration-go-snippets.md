---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewUnifiedRoleManagementAlertConfiguration()
isEnabled := true
requestBody.SetIsEnabled(&isEnabled) 
globalAdminCountThreshold := int32(4)
requestBody.SetGlobalAdminCountThreshold(&globalAdminCountThreshold) 
percentageOfGlobalAdminsOutOfRolesThreshold := int32(10)
requestBody.SetPercentageOfGlobalAdminsOutOfRolesThreshold(&percentageOfGlobalAdminsOutOfRolesThreshold) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
alertConfigurations, err := graphClient.IdentityGovernance().RoleManagementAlerts().AlertConfigurations().ByUnifiedRoleManagementAlertConfigurationId("unifiedRoleManagementAlertConfiguration-id").Patch(context.Background(), requestBody, nil)


```