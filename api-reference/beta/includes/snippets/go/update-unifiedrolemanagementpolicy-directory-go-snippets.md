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


requestBody := graphmodels.NewUnifiedRoleManagementPolicy()


unifiedRoleManagementPolicyRule := graphmodels.NewUnifiedRoleManagementPolicyApprovalRule()
id := "Approval_EndUser_Assignment"
unifiedRoleManagementPolicyRule.SetId(&id) 
target := graphmodels.NewUnifiedRoleManagementPolicyRuleTarget()
caller := "EndUser"
target.SetCaller(&caller) 
operations := []string {
	"All",
}
target.SetOperations(operations)
level := "Assignment"
target.SetLevel(&level) 
inheritableSettings := []string {

}
target.SetInheritableSettings(inheritableSettings)
enforcedSettings := []string {

}
target.SetEnforcedSettings(enforcedSettings)
unifiedRoleManagementPolicyRule.SetTarget(target)
setting := graphmodels.NewApprovalSettings()
isApprovalRequired := false
setting.SetIsApprovalRequired(&isApprovalRequired) 
isApprovalRequiredForExtension := false
setting.SetIsApprovalRequiredForExtension(&isApprovalRequiredForExtension) 
isRequestorJustificationRequired := true
setting.SetIsRequestorJustificationRequired(&isRequestorJustificationRequired) 
approvalMode := "SingleStage"
setting.SetApprovalMode(&approvalMode) 


approvalStage := graphmodels.NewApprovalStage()
approvalStageTimeOutInDays := int32(1)
approvalStage.SetApprovalStageTimeOutInDays(&approvalStageTimeOutInDays) 
isApproverJustificationRequired := true
approvalStage.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
escalationTimeInMinutes := int32(0)
approvalStage.SetEscalationTimeInMinutes(&escalationTimeInMinutes) 
isEscalationEnabled := false
approvalStage.SetIsEscalationEnabled(&isEscalationEnabled) 
primaryApprovers := []graphmodels.UserSetable {

}
approvalStage.SetPrimaryApprovers(primaryApprovers)
escalationApprovers := []graphmodels.UserSetable {

}
approvalStage.SetEscalationApprovers(escalationApprovers)

approvalStages := []graphmodels.ApprovalStageable {
	approvalStage,
}
setting.SetApprovalStages(approvalStages)
unifiedRoleManagementPolicyRule.SetSetting(setting)
unifiedRoleManagementPolicyRule1 := graphmodels.NewUnifiedRoleManagementPolicyAuthenticationContextRule()
id := "AuthenticationContext_EndUser_Assignment"
unifiedRoleManagementPolicyRule1.SetId(&id) 
isEnabled := false
unifiedRoleManagementPolicyRule1.SetIsEnabled(&isEnabled) 
claimValue := ""
unifiedRoleManagementPolicyRule1.SetClaimValue(&claimValue) 
target := graphmodels.NewUnifiedRoleManagementPolicyRuleTarget()
caller := "EndUser"
target.SetCaller(&caller) 
operations := []string {
	"All",
}
target.SetOperations(operations)
level := "Assignment"
target.SetLevel(&level) 
inheritableSettings := []string {

}
target.SetInheritableSettings(inheritableSettings)
enforcedSettings := []string {

}
target.SetEnforcedSettings(enforcedSettings)
unifiedRoleManagementPolicyRule1.SetTarget(target)
unifiedRoleManagementPolicyRule2 := graphmodels.NewUnifiedRoleManagementPolicyEnablementRule()
id := "Enablement_Admin_Eligibility"
unifiedRoleManagementPolicyRule2.SetId(&id) 
enabledRules := []string {

}
unifiedRoleManagementPolicyRule2.SetEnabledRules(enabledRules)
target := graphmodels.NewUnifiedRoleManagementPolicyRuleTarget()
caller := "Admin"
target.SetCaller(&caller) 
operations := []string {
	"All",
}
target.SetOperations(operations)
level := "Eligibility"
target.SetLevel(&level) 
inheritableSettings := []string {

}
target.SetInheritableSettings(inheritableSettings)
enforcedSettings := []string {

}
target.SetEnforcedSettings(enforcedSettings)
unifiedRoleManagementPolicyRule2.SetTarget(target)
unifiedRoleManagementPolicyRule3 := graphmodels.NewUnifiedRoleManagementPolicyExpirationRule()
id := "Expiration_Admin_Eligibility"
unifiedRoleManagementPolicyRule3.SetId(&id) 
isExpirationRequired := false
unifiedRoleManagementPolicyRule3.SetIsExpirationRequired(&isExpirationRequired) 
maximumDuration , err := abstractions.ParseISODuration("P365D")
unifiedRoleManagementPolicyRule3.SetMaximumDuration(&maximumDuration) 
target := graphmodels.NewUnifiedRoleManagementPolicyRuleTarget()
caller := "Admin"
target.SetCaller(&caller) 
operations := []string {
	"All",
}
target.SetOperations(operations)
level := "Eligibility"
target.SetLevel(&level) 
inheritableSettings := []string {

}
target.SetInheritableSettings(inheritableSettings)
enforcedSettings := []string {

}
target.SetEnforcedSettings(enforcedSettings)
unifiedRoleManagementPolicyRule3.SetTarget(target)
unifiedRoleManagementPolicyRule4 := graphmodels.NewUnifiedRoleManagementPolicyNotificationRule()
id := "Notification_Admin_Admin_Eligibility"
unifiedRoleManagementPolicyRule4.SetId(&id) 
notificationType := "Email"
unifiedRoleManagementPolicyRule4.SetNotificationType(&notificationType) 
recipientType := "Admin"
unifiedRoleManagementPolicyRule4.SetRecipientType(&recipientType) 
notificationLevel := "All"
unifiedRoleManagementPolicyRule4.SetNotificationLevel(&notificationLevel) 
isDefaultRecipientsEnabled := true
unifiedRoleManagementPolicyRule4.SetIsDefaultRecipientsEnabled(&isDefaultRecipientsEnabled) 
notificationRecipients := []string {

}
unifiedRoleManagementPolicyRule4.SetNotificationRecipients(notificationRecipients)
target := graphmodels.NewUnifiedRoleManagementPolicyRuleTarget()
caller := "Admin"
target.SetCaller(&caller) 
operations := []string {
	"All",
}
target.SetOperations(operations)
level := "Eligibility"
target.SetLevel(&level) 
inheritableSettings := []string {

}
target.SetInheritableSettings(inheritableSettings)
enforcedSettings := []string {

}
target.SetEnforcedSettings(enforcedSettings)
unifiedRoleManagementPolicyRule4.SetTarget(target)

rules := []graphmodels.UnifiedRoleManagementPolicyRuleable {
	unifiedRoleManagementPolicyRule,
	unifiedRoleManagementPolicyRule1,
	unifiedRoleManagementPolicyRule2,
	unifiedRoleManagementPolicyRule3,
	unifiedRoleManagementPolicyRule4,
}
requestBody.SetRules(rules)

roleManagementPolicies, err := graphClient.Policies().RoleManagementPolicies().ByUnifiedRoleManagementPolicyId("unifiedRoleManagementPolicy-id").Patch(context.Background(), requestBody, nil)


```