---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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
additionalData := map[string]interface{}{
setting := graphmodels.New()
	isApprovalRequired := true
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


 := graphmodels.New()
userId := "10a08e2e-3ea2-4ce0-80cb-d5fdd4b05ea6"
.SetUserId(&userId) 
 := graphmodels.New()
groupId := "14f2746d-7d6f-4ac6-acd8-8cac318b041b"
.SetGroupId(&groupId) 

primaryApprovers := []graphmodels.Objectable {
	,
	,

}
.SetPrimaryApprovers(primaryApprovers)
isEscalationEnabled := false
.SetIsEscalationEnabled(&isEscalationEnabled) 
escalationApprovers := []graphmodels.able {

}
.SetEscalationApprovers(escalationApprovers)

	approvalStages := []graphmodels.Objectable {
		,

	}
	setting.SetApprovalStages(approvalStages)
	requestBody.SetSetting(setting)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Policies().RoleManagementPolicies().ByRoleManagementPolicieId("unifiedRoleManagementPolicy-id").Rules().ByRuleId("unifiedRoleManagementPolicyRule-id").Patch(context.Background(), requestBody, nil)


```