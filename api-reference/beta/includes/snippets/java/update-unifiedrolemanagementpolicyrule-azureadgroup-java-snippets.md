---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicyExpirationRule unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyExpirationRule();
unifiedRoleManagementPolicyRule.id = "Expiration_EndUser_Assignment";
unifiedRoleManagementPolicyRule.isExpirationRequired = true;
unifiedRoleManagementPolicyRule.maximumDuration = DatatypeFactory.newInstance().newDuration("PT1H45M");
UnifiedRoleManagementPolicyRuleTarget target = new UnifiedRoleManagementPolicyRuleTarget();
target.caller = "EndUser";
LinkedList<String> operationsList = new LinkedList<String>();
operationsList.add("All");
target.operations = operationsList;
target.level = "Assignment";
LinkedList<String> inheritableSettingsList = new LinkedList<String>();
target.inheritableSettings = inheritableSettingsList;
LinkedList<String> enforcedSettingsList = new LinkedList<String>();
target.enforcedSettings = enforcedSettingsList;
unifiedRoleManagementPolicyRule.target = target;

graphClient.policies().roleManagementPolicies("Group_60bba733-f09d-49b7-8445-32369aa066b3_f21b26d9-9ff9-4af1-b1d4-bddf28591369").rules("Expiration_EndUser_Assignment")
	.buildRequest()
	.patch(unifiedRoleManagementPolicyRule);

```