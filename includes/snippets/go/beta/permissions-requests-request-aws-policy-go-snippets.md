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
actionInfo := graphmodels.NewAwsPolicyPermissionsDefinitionAction()


permissionsDefinitionAwsPolicy := graphmodels.NewPermissionsDefinitionAwsPolicy()
id := "arn:aws:iam::956987887735:policy/AddUserToGroup"
permissionsDefinitionAwsPolicy.SetId(&id) 

policies := []graphmodels.PermissionsDefinitionAwsPolicyable {
	permissionsDefinitionAwsPolicy,
}
actionInfo.SetPolicies(policies)
assignToRoleId := "arn:aws:aim::956987887735:role/saml-user"
actionInfo.SetAssignToRoleId(&assignToRoleId) 
requestedPermissions.SetActionInfo(actionInfo)
identityInfo := graphmodels.NewPermissionsDefinitionAuthorizationSystemIdentity()
externalId := "alex@contoso.com"
identityInfo.SetExternalId(&externalId) 
source := graphmodels.NewSamlIdentitySource()
identityInfo.SetSource(source)
identityType := graphmodels.USER_PERMISSIONSDEFINITIONIDENTITYTYPE 
identityInfo.SetIdentityType(&identityType) 
requestedPermissions.SetIdentityInfo(identityInfo)
requestBody.SetRequestedPermissions(requestedPermissions)
justification := "I need to do this because I want to add a user to a group"
requestBody.SetJustification(&justification) 
notes := "Pretty Please"
requestBody.SetNotes(&notes) 
scheduleInfo := graphmodels.NewRequestSchedule()
expiration := graphmodels.NewExpirationPattern()
duration , err := abstractions.ParseISODuration("PT1H")
expiration.SetDuration(&duration) 
scheduleInfo.SetExpiration(expiration)
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