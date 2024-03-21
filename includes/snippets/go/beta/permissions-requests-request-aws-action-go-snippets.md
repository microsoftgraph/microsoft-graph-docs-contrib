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


requestBody := graphmodels.NewScheduledPermissionsRequest()
requestedPermissions := graphmodels.NewAwsPermissionsDefinition()
authorizationSystemInfo := graphmodels.NewPermissionsDefinitionAuthorizationSystem()
authorizationSystemId := "956987887735"
authorizationSystemInfo.SetAuthorizationSystemId(&authorizationSystemId) 
authorizationSystemType := "AWS"
authorizationSystemInfo.SetAuthorizationSystemType(&authorizationSystemType) 
requestedPermissions.SetAuthorizationSystemInfo(authorizationSystemInfo)
actionInfo := graphmodels.NewAwsActionsPermissionsDefinitionAction()


awsStatement := graphmodels.NewAwsStatement()
statementId := "test1"
awsStatement.SetStatementId(&statementId) 
actions := []string {
	"s3:AbortMultipartUpload",
	"s3:CreateBucket",
}
awsStatement.SetActions(actions)
notActions := []string {

}
awsStatement.SetNotActions(notActions)
resources := []string {
	"*",
}
awsStatement.SetResources(resources)
notResources := []string {

}
awsStatement.SetNotResources(notResources)
effect := graphmodels.ALLOW_AWSSTATEMENTEFFECT 
awsStatement.SetEffect(&effect) 
condition := graphmodels.NewAwsCondition()
additionalData := map[string]interface{}{
numericLessThanEquals := graphmodels.New()
aws:MultiFactorAuthAge := "3600"
numericLessThanEquals.SetAws:MultiFactorAuthAge(&aws:MultiFactorAuthAge) 
	condition.SetNumericLessThanEquals(numericLessThanEquals)
}
condition.SetAdditionalData(additionalData)
awsStatement.SetCondition(condition)
awsStatement1 := graphmodels.NewAwsStatement()
statementId := "test2"
awsStatement1.SetStatementId(&statementId) 
actions := []string {
	"s3:Delete:*",
}
awsStatement1.SetActions(actions)
notActions := []string {

}
awsStatement1.SetNotActions(notActions)
resources := []string {
	"*",
}
awsStatement1.SetResources(resources)
notResources := []string {

}
awsStatement1.SetNotResources(notResources)
effect := graphmodels.ALLOW_AWSSTATEMENTEFFECT 
awsStatement1.SetEffect(&effect) 
condition := graphmodels.NewAwsCondition()
additionalData := map[string]interface{}{
numericLessThanEquals := graphmodels.New()
aws:MultiFactorAuthAge := "3600"
numericLessThanEquals.SetAws:MultiFactorAuthAge(&aws:MultiFactorAuthAge) 
	condition.SetNumericLessThanEquals(numericLessThanEquals)
}
condition.SetAdditionalData(additionalData)
awsStatement1.SetCondition(condition)

statements := []graphmodels.AwsStatementable {
	awsStatement,
	awsStatement1,
}
actionInfo.SetStatements(statements)
assignToRoleId := "arn:aws:iam::956987887735:role/ck-saml-power-user"
actionInfo.SetAssignToRoleId(&assignToRoleId) 
requestedPermissions.SetActionInfo(actionInfo)
identityInfo := graphmodels.NewPermissionsDefinitionAuthorizationSystemIdentity()
externalId := "rsn:alex@contoso.com"
identityInfo.SetExternalId(&externalId) 
source := graphmodels.NewSamlIdentitySource()
identityInfo.SetSource(source)
identityType := graphmodels.USER_PERMISSIONSDEFINITIONIDENTITYTYPE 
identityInfo.SetIdentityType(&identityType) 
requestedPermissions.SetIdentityInfo(identityInfo)
requestBody.SetRequestedPermissions(requestedPermissions)
justification := "I need to do this because I want to access S3 resources"
requestBody.SetJustification(&justification) 
notes := "Please"
requestBody.SetNotes(&notes) 
scheduleInfo := graphmodels.NewRequestSchedule()
startDateTime , err := time.Parse(time.RFC3339, "2023-02-08T12:15:00Z")
scheduleInfo.SetStartDateTime(&startDateTime) 
expiration := graphmodels.NewExpirationPattern()
duration , err := abstractions.ParseISODuration("PT1H")
expiration.SetDuration(&duration) 
scheduleInfo.SetExpiration(expiration)
recurrence := graphmodels.NewPatternedRecurrence()
pattern := graphmodels.NewRecurrencePattern()
dayOfMonth := int32(5)
pattern.SetDayOfMonth(&dayOfMonth) 
daysOfWeek := []graphmodels.DayOfWeekable {

}
pattern.SetDaysOfWeek(daysOfWeek)
interval := int32(1)
pattern.SetInterval(&interval) 
additionalData := map[string]interface{}{
	"reccurencePatternType" : "absoluteMonthly", 
}
pattern.SetAdditionalData(additionalData)
recurrence.SetPattern(pattern)
range := graphmodels.NewRecurrenceRange()
startDate := 2023-02-08
range.SetStartDate(&startDate) 
additionalData := map[string]interface{}{
	"reccurenceRangeType" : "noEnd", 
}
range.SetAdditionalData(additionalData)
recurrence.SetRange(range)
scheduleInfo.SetRecurrence(recurrence)
requestBody.SetScheduleInfo(scheduleInfo)
ticketInfo := graphmodels.NewTicketInfo()
ticketNumber := "INC1234567"
ticketInfo.SetTicketNumber(&ticketNumber) 
ticketSystem := "ServiceNow"
ticketInfo.SetTicketSystem(&ticketSystem) 
ticketSubmitterIdentityId := "alex@contoso.com"
ticketInfo.SetTicketSubmitterIdentityId(&ticketSubmitterIdentityId) 
ticketApproverIdentityId := "alexmanager@contoso.com"
ticketInfo.SetTicketApproverIdentityId(&ticketApproverIdentityId) 
requestBody.SetTicketInfo(ticketInfo)

scheduledPermissionsRequests, err := graphClient.IdentityGovernance().PermissionsManagement().ScheduledPermissionsRequests().Post(context.Background(), requestBody, nil)


```