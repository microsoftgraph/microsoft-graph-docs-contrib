---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ScheduledPermissionsRequest scheduledPermissionsRequest = new ScheduledPermissionsRequest();
AwsPermissionsDefinition requestedPermissions = new AwsPermissionsDefinition();
requestedPermissions.setOdataType("#microsoft.graph.awsPermissionsDefinition");
PermissionsDefinitionAuthorizationSystem authorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
authorizationSystemInfo.setAuthorizationSystemId("956987887735");
authorizationSystemInfo.setAuthorizationSystemType("AWS");
requestedPermissions.setAuthorizationSystemInfo(authorizationSystemInfo);
AwsPolicyPermissionsDefinitionAction actionInfo = new AwsPolicyPermissionsDefinitionAction();
actionInfo.setOdataType("microsoft.graph.awsPolicyPermissionsDefinitionAction");
LinkedList<PermissionsDefinitionAwsPolicy> policies = new LinkedList<PermissionsDefinitionAwsPolicy>();
PermissionsDefinitionAwsPolicy permissionsDefinitionAwsPolicy = new PermissionsDefinitionAwsPolicy();
permissionsDefinitionAwsPolicy.setId("arn:aws:iam::956987887735:policy/AddUserToGroup");
policies.add(permissionsDefinitionAwsPolicy);
actionInfo.setPolicies(policies);
actionInfo.setAssignToRoleId("arn:aws:aim::956987887735:role/saml-user");
requestedPermissions.setActionInfo(actionInfo);
PermissionsDefinitionAuthorizationSystemIdentity identityInfo = new PermissionsDefinitionAuthorizationSystemIdentity();
identityInfo.setExternalId("alex@contoso.com");
SamlIdentitySource source = new SamlIdentitySource();
source.setOdataType("microsoft.graph.samlIdentitySource");
identityInfo.setSource(source);
identityInfo.setIdentityType(PermissionsDefinitionIdentityType.User);
requestedPermissions.setIdentityInfo(identityInfo);
scheduledPermissionsRequest.setRequestedPermissions(requestedPermissions);
scheduledPermissionsRequest.setJustification("I need to do this because I want to add a user to a group");
scheduledPermissionsRequest.setNotes("Pretty Please");
RequestSchedule scheduleInfo = new RequestSchedule();
ExpirationPattern expiration = new ExpirationPattern();
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("PT1H"));
expiration.setDuration(duration);
scheduleInfo.setExpiration(expiration);
scheduledPermissionsRequest.setScheduleInfo(scheduleInfo);
TicketInfo ticketInfo = new TicketInfo();
ticketInfo.setTicketNumber("INC1234567");
ticketInfo.setTicketSystem("ServiceNow");
ticketInfo.setTicketSubmitterIdentityId("alex@contoso.com");
ticketInfo.setTicketApproverIdentityId("alexmanager@contoso.com");
scheduledPermissionsRequest.setTicketInfo(ticketInfo);
ScheduledPermissionsRequest result = graphClient.identityGovernance().permissionsManagement().scheduledPermissionsRequests().post(scheduledPermissionsRequest);


```