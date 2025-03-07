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

requestBody := graphmodels.NewGovernanceRoleSetting()


governanceRuleSetting := graphmodels.NewGovernanceRuleSetting()
ruleIdentifier := "ExpirationRule"
governanceRuleSetting.SetRuleIdentifier(&ruleIdentifier) 
setting := "{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}"
governanceRuleSetting.SetSetting(&setting) 

adminEligibleSettings := []graphmodels.GovernanceRuleSettingable {
	governanceRuleSetting,
}
requestBody.SetAdminEligibleSettings(adminEligibleSettings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
roleSettings, err := graphClient.PrivilegedAccess().ByPrivilegedAccessId("privilegedAccess-id").RoleSettings().ByGovernanceRoleSettingId("governanceRoleSetting-id").Patch(context.Background(), requestBody, nil)


```