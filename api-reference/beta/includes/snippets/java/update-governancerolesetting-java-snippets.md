---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GovernanceRoleSetting governanceRoleSetting = new GovernanceRoleSetting();
LinkedList<GovernanceRuleSetting> adminEligibleSettings = new LinkedList<GovernanceRuleSetting>();
GovernanceRuleSetting governanceRuleSetting = new GovernanceRuleSetting();
governanceRuleSetting.setRuleIdentifier("ExpirationRule");
governanceRuleSetting.setSetting("{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}");
adminEligibleSettings.add(governanceRuleSetting);
governanceRoleSetting.setAdminEligibleSettings(adminEligibleSettings);
GovernanceRoleSetting result = graphClient.privilegedAccess().byPrivilegedAccessId("{privilegedAccess-id}").roleSettings().byGovernanceRoleSettingId("{governanceRoleSetting-id}").patch(governanceRoleSetting);


```