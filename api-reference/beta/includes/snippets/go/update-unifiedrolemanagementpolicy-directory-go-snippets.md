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

graphClient, err := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnifiedRoleManagementPolicy()


unifiedRoleManagementPolicyRule := graphmodels.NewUnifiedRoleManagementPolicyRule()
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
additionalData := map[string]interface{}{
setting := graphmodels.New()
	isApprovalRequired := false
setting.SetIsApprovalRequired(&isApprovalRequired) 
	isApprovalRequiredForExtension := false
setting.SetIsApprovalRequiredForExtension(&isApprovalRequiredForExtension) 
	isRequestorJustificationRequired := true
setting.SetIsRequestorJustificationRequired(&isRequestorJustificationRequired) 
approvalMode := "SingleStage"
setting.SetApprovalMode(&approvalMode) 


 := graphmodels.New()
approvalStageTimeOutInDays := int32(1)
.SetApprovalStageTimeOutInDays(&approvalStageTimeOutInDays) 
isApproverJustificationRequired := true
.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
escalationTimeInMinutes := int32(0)
.SetEscalationTimeInMinutes(&escalationTimeInMinutes) 
isEscalationEnabled := false
.SetIsEscalationEnabled(&isEscalationEnabled) 
primaryApprovers := []graphmodels.able {

}
.SetPrimaryApprovers(primaryApprovers)
escalationApprovers := []graphmodels.able {

}
.SetEscalationApprovers(escalationApprovers)

	approvalStages := []graphmodels.Objectable {
		,

	}
	setting.SetApprovalStages(approvalStages)
	unifiedRoleManagementPolicyRule.SetSetting(setting)
}
unifiedRoleManagementPolicyRule.SetAdditionalData(additionalData)
unifiedRoleManagementPolicyRule1 := graphmodels.NewUnifiedRoleManagementPolicyRule()
id := "AuthenticationContext_EndUser_Assignment"
unifiedRoleManagementPolicyRule1.SetId(&id) 
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
additionalData := map[string]interface{}{
	isEnabled := false
unifiedRoleManagementPolicyRule1.SetIsEnabled(&isEnabled) 
	"claimValue" : "", 
}
unifiedRoleManagementPolicyRule1.SetAdditionalData(additionalData)
unifiedRoleManagementPolicyRule2 := graphmodels.NewUnifiedRoleManagementPolicyRule()
id := "Enablement_Admin_Eligibility"
unifiedRoleManagementPolicyRule2.SetId(&id) 
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
additionalData := map[string]interface{}{
	enabledRules := []graphmodels.able {

	}
}
unifiedRoleManagementPolicyRule2.SetAdditionalData(additionalData)
unifiedRoleManagementPolicyRule3 := graphmodels.NewUnifiedRoleManagementPolicyRule()
id := "Expiration_Admin_Eligibility"
unifiedRoleManagementPolicyRule3.SetId(&id) 
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
additionalData := map[string]interface{}{
	isExpirationRequired := false
unifiedRoleManagementPolicyRule3.SetIsExpirationRequired(&isExpirationRequired) 
	"maximumDuration" : "P365D", 
}
unifiedRoleManagementPolicyRule3.SetAdditionalData(additionalData)
unifiedRoleManagementPolicyRule4 := graphmodels.NewUnifiedRoleManagementPolicyRule()
id := "Notification_Admin_Admin_Eligibility"
unifiedRoleManagementPolicyRule4.SetId(&id) 
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
additionalData := map[string]interface{}{
	"notificationType" : "Email", 
	"recipientType" : "Admin", 
	"notificationLevel" : "All", 
	isDefaultRecipientsEnabled := true
unifiedRoleManagementPolicyRule4.SetIsDefaultRecipientsEnabled(&isDefaultRecipientsEnabled) 
	notificationRecipients := []graphmodels.able {

	}
}
unifiedRoleManagementPolicyRule4.SetAdditionalData(additionalData)

rules := []graphmodels.UnifiedRoleManagementPolicyRuleable {
	unifiedRoleManagementPolicyRule,
	unifiedRoleManagementPolicyRule1,
	unifiedRoleManagementPolicyRule2,
	unifiedRoleManagementPolicyRule3,
	unifiedRoleManagementPolicyRule4,

}
requestBody.SetRules(rules)

result, err := graphClient.Policies().RoleManagementPolicies().ByRoleManagementPolicieId("unifiedRoleManagementPolicy-id").Patch(context.Background(), requestBody, nil)


```