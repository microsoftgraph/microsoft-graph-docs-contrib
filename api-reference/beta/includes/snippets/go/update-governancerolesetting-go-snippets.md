---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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

result, err := graphClient.PrivilegedAccess().ByPrivilegedAccesId("privilegedAccess-id").RoleSettings().ByRoleSettingId("governanceRoleSetting-id").Patch(context.Background(), requestBody, nil)


```