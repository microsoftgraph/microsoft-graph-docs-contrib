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

roleSettings, err := graphClient.PrivilegedAccess().ByPrivilegedAccessId("privilegedAccess-id").RoleSettings().ByGovernanceRoleSettingId("governanceRoleSetting-id").Patch(context.Background(), requestBody, nil)


```