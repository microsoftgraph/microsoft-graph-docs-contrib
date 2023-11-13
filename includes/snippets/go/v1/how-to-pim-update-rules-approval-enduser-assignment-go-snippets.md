---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUnifiedRoleManagementPolicyRule()
id := "Approval_EndUser_Assignment"
requestBody.SetId(&id) 
target := graphmodels.NewUnifiedRoleManagementPolicyRuleTarget()
caller := "EndUser"
target.SetCaller(&caller) 
operations := []graphmodels.UnifiedRoleManagementPolicyRuleTargetOperationsable {
	unifiedRoleManagementPolicyRuleTargetOperations := graphmodels.ALL_UNIFIEDROLEMANAGEMENTPOLICYRULETARGETOPERATIONS 
	target.SetUnifiedRoleManagementPolicyRuleTargetOperations(&unifiedRoleManagementPolicyRuleTargetOperations)
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
requestBody.SetTarget(target)
setting := graphmodels.NewApprovalSettings()
isApprovalRequired := true
setting.SetIsApprovalRequired(&isApprovalRequired) 
isApprovalRequiredForExtension := false
setting.SetIsApprovalRequiredForExtension(&isApprovalRequiredForExtension) 
isRequestorJustificationRequired := true
setting.SetIsRequestorJustificationRequired(&isRequestorJustificationRequired) 
approvalMode := "SingleStage"
setting.SetApprovalMode(&approvalMode) 


unifiedApprovalStage := graphmodels.NewUnifiedApprovalStage()
approvalStageTimeOutInDays := int32(1)
unifiedApprovalStage.SetApprovalStageTimeOutInDays(&approvalStageTimeOutInDays) 
isApproverJustificationRequired := true
unifiedApprovalStage.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
escalationTimeInMinutes := int32(0)
unifiedApprovalStage.SetEscalationTimeInMinutes(&escalationTimeInMinutes) 


subjectSet := graphmodels.NewSingleUser()
userId := "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6"
subjectSet.SetUserId(&userId) 
subjectSet1 := graphmodels.NewGroupMembers()
groupId := "14f2746d-7d6f-4ac6-acd8-8cac318b041b"
subjectSet1.SetGroupId(&groupId) 

primaryApprovers := []graphmodels.SubjectSetable {
	subjectSet,
	subjectSet1,
}
unifiedApprovalStage.SetPrimaryApprovers(primaryApprovers)
isEscalationEnabled := false
unifiedApprovalStage.SetIsEscalationEnabled(&isEscalationEnabled) 
escalationApprovers := []graphmodels.SubjectSetable {

}
unifiedApprovalStage.SetEscalationApprovers(escalationApprovers)

approvalStages := []graphmodels.UnifiedApprovalStageable {
	unifiedApprovalStage,
}
setting.SetApprovalStages(approvalStages)
requestBody.SetSetting(setting)

rules, err := graphClient.Policies().RoleManagementPolicies().ByUnifiedRoleManagementPolicyId("unifiedRoleManagementPolicy-id").Rules().ByUnifiedRoleManagementPolicyRuleId("unifiedRoleManagementPolicyRule-id").Patch(context.Background(), requestBody, nil)


```