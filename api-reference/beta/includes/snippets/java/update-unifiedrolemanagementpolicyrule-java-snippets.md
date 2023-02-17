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

graphClient.policies().roleManagementPolicies("DirectoryRole_84841066-274d-4ec0-a5c1-276be684bdd3_200ec19a-09e7-4e7a-9515-cf1ee64b96f9").rules("Expiration_EndUser_Assignment")
	.buildRequest()
	.patch(unifiedRoleManagementPolicyRule);

```