---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewScheduledPermissionsRequest()
requestedPermissions := graphmodels.NewSingleResourceGcpPermissionsDefinition()
authorizationSystemInfo := graphmodels.NewPermissionsDefinitionAuthorizationSystem()
authorizationSystemId := "carbide-bonsai-205017"
authorizationSystemInfo.SetAuthorizationSystemId(&authorizationSystemId) 
authorizationSystemType := "GCP"
authorizationSystemInfo.SetAuthorizationSystemType(&authorizationSystemType) 
requestedPermissions.SetAuthorizationSystemInfo(authorizationSystemInfo)
actionInfo := graphmodels.NewGcpRolePermissionsDefinitionAction()


permissionsDefinitionGcpRole := graphmodels.NewPermissionsDefinitionGcpRole()
id := "roles/dialogflow.aamAdmin"
permissionsDefinitionGcpRole.SetId(&id) 

roles := []graphmodels.PermissionsDefinitionGcpRoleable {
	permissionsDefinitionGcpRole,
}
actionInfo.SetRoles(roles)
requestedPermissions.SetActionInfo(actionInfo)
identityInfo := graphmodels.NewPermissionsDefinitionAuthorizationSystemIdentity()
externalId := "alex@contoso.com"
identityInfo.SetExternalId(&externalId) 
source := graphmodels.NewEdIdentitySource()
identityInfo.SetSource(source)
identityType := graphmodels.USER_PERMISSIONSDEFINITIONIDENTITYTYPE 
identityInfo.SetIdentityType(&identityType) 
requestedPermissions.SetIdentityInfo(identityInfo)
resourceId := "carbide-bonsai-205017"
requestedPermissions.SetResourceId(&resourceId) 
requestBody.SetRequestedPermissions(requestedPermissions)
justification := "I need to do this because I want to be an administrator"
requestBody.SetJustification(&justification) 
notes := "Pretty Pleaseeeee"
requestBody.SetNotes(&notes) 
scheduleInfo := graphmodels.NewRequestSchedule()
startDateTime := null
scheduleInfo.SetStartDateTime(&startDateTime) 
expiration := graphmodels.NewExpirationPattern()
duration , err := abstractions.ParseISODuration("PT1H")
expiration.SetDuration(&duration) 
scheduleInfo.SetExpiration(expiration)
recurrence := null
scheduleInfo.SetRecurrence(&recurrence) 
requestBody.SetScheduleInfo(scheduleInfo)
ticketInfo := graphmodels.NewTicketInfo()
ticketNumber := "123456"
ticketInfo.SetTicketNumber(&ticketNumber) 
ticketSystem := "ServiceNow"
ticketInfo.SetTicketSystem(&ticketSystem) 
ticketSubmitterIdentityId := "alex@contoso.com"
ticketInfo.SetTicketSubmitterIdentityId(&ticketSubmitterIdentityId) 
ticketApproverIdentityId := "alexmanager@contoso.com"
ticketInfo.SetTicketApproverIdentityId(&ticketApproverIdentityId) 
requestBody.SetTicketInfo(ticketInfo)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
scheduledPermissionsRequests, err := graphClient.IdentityGovernance().PermissionsManagement().ScheduledPermissionsRequests().Post(context.Background(), requestBody, nil)


```