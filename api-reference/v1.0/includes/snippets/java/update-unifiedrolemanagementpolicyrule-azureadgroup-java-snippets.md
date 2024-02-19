---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

UnifiedRoleManagementPolicyExpirationRule unifiedRoleManagementPolicyRule = new UnifiedRoleManagementPolicyExpirationRule();
unifiedRoleManagementPolicyRule.setOdataType("#microsoft.graph.unifiedRoleManagementPolicyExpirationRule");
unifiedRoleManagementPolicyRule.setId("Expiration_EndUser_Assignment");
unifiedRoleManagementPolicyRule.setIsExpirationRequired(true);
PeriodAndDuration maximumDuration = PeriodAndDuration.ofDuration(Duration.parse("PT1H45M"));
unifiedRoleManagementPolicyRule.setMaximumDuration(maximumDuration);
UnifiedRoleManagementPolicyRuleTarget target = new UnifiedRoleManagementPolicyRuleTarget();
target.setCaller("EndUser");
LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations> operations = new LinkedList<UnifiedRoleManagementPolicyRuleTargetOperations>();
operations.add(UnifiedRoleManagementPolicyRuleTargetOperations.All);
target.setOperations(operations);
target.setLevel("Assignment");
LinkedList<String> inheritableSettings = new LinkedList<String>();
target.setInheritableSettings(inheritableSettings);
LinkedList<String> enforcedSettings = new LinkedList<String>();
target.setEnforcedSettings(enforcedSettings);
unifiedRoleManagementPolicyRule.setTarget(target);
UnifiedRoleManagementPolicyRule result = graphClient.policies().roleManagementPolicies().byUnifiedRoleManagementPolicyId("{unifiedRoleManagementPolicy-id}").rules().byUnifiedRoleManagementPolicyRuleId("{unifiedRoleManagementPolicyRule-id}").patch(unifiedRoleManagementPolicyRule);


```