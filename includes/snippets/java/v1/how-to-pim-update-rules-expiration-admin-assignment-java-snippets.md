---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UnifiedRoleManagementPolicyExpirationRule unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyExpirationRule();
unifiedRoleManagementPolicyRule.id = "Expiration_Admin_Assignment";
unifiedRoleManagementPolicyRule.isExpirationRequired = true;
unifiedRoleManagementPolicyRule.maximumDuration = DatatypeFactory.newInstance().newDuration("P90D");
UnifiedRoleManagementPolicyRuleTarget target = new UnifiedRoleManagementPolicyRuleTarget();
target.caller = "Admin";
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operationsList = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operationsList.add(UnifiedRoleManagementPolicyRuleTargetOperations.ALL);
target.operations = operationsList;
target.level = "Assignment";
LinkedList<String> inheritableSettingsList = new LinkedList<String>();
target.inheritableSettings = inheritableSettingsList;
LinkedList<String> enforcedSettingsList = new LinkedList<String>();
target.enforcedSettings = enforcedSettingsList;
unifiedRoleManagementPolicyRule.target = target;

graphClient.policies().roleManagementPolicies("DirectoryRole_38d49456-54d4-455d-a8d6-c383c71e0a6d_59d351b1-e819-4262-b298-236f5f9b1a67").rules("Expiration_Admin_Assignment")
	.buildRequest()
	.patch(unifiedRoleManagementPolicyRule);

```