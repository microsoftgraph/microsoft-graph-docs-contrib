---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ScheduledPermissionsRequest scheduledPermissionsRequest = new ScheduledPermissionsRequest();
SingleResourceGcpPermissionsDefinition requestedPermissions = new SingleResourceGcpPermissionsDefinition();
requestedPermissions.setOdataType("microsoft.graph.singleResourceGcpPermissionsDefinition");
PermissionsDefinitionAuthorizationSystem authorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
authorizationSystemInfo.setAuthorizationSystemId("carbide-bonsai-205017");
authorizationSystemInfo.setAuthorizationSystemType("GCP");
requestedPermissions.setAuthorizationSystemInfo(authorizationSystemInfo);
GcpRolePermissionsDefinitionAction actionInfo = new GcpRolePermissionsDefinitionAction();
actionInfo.setOdataType("microsoft.graph.gcpRolePermissionsDefinitionAction");
LinkedList<PermissionsDefinitionGcpRole> roles = new LinkedList<PermissionsDefinitionGcpRole>();
PermissionsDefinitionGcpRole permissionsDefinitionGcpRole = new PermissionsDefinitionGcpRole();
permissionsDefinitionGcpRole.setId("roles/dialogflow.aamAdmin");
roles.add(permissionsDefinitionGcpRole);
actionInfo.setRoles(roles);
requestedPermissions.setActionInfo(actionInfo);
PermissionsDefinitionAuthorizationSystemIdentity identityInfo = new PermissionsDefinitionAuthorizationSystemIdentity();
identityInfo.setExternalId("alex@contoso.com");
EdIdentitySource source = new EdIdentitySource();
source.setOdataType("microsoft.graph.edIdentitySource");
identityInfo.setSource(source);
identityInfo.setIdentityType(PermissionsDefinitionIdentityType.User);
requestedPermissions.setIdentityInfo(identityInfo);
requestedPermissions.setResourceId("carbide-bonsai-205017");
scheduledPermissionsRequest.setRequestedPermissions(requestedPermissions);
scheduledPermissionsRequest.setJustification("I need to do this because I want to be an administrator");
scheduledPermissionsRequest.setNotes("Pretty Pleaseeeee");
RequestSchedule scheduleInfo = new RequestSchedule();
scheduleInfo.setStartDateTime(null);
ExpirationPattern expiration = new ExpirationPattern();
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("PT1H"));
expiration.setDuration(duration);
scheduleInfo.setExpiration(expiration);
scheduleInfo.setRecurrence(null);
scheduledPermissionsRequest.setScheduleInfo(scheduleInfo);
TicketInfo ticketInfo = new TicketInfo();
ticketInfo.setTicketNumber("123456");
ticketInfo.setTicketSystem("ServiceNow");
ticketInfo.setTicketSubmitterIdentityId("alex@contoso.com");
ticketInfo.setTicketApproverIdentityId("alexmanager@contoso.com");
scheduledPermissionsRequest.setTicketInfo(ticketInfo);
ScheduledPermissionsRequest result = graphClient.identityGovernance().permissionsManagement().scheduledPermissionsRequests().post(scheduledPermissionsRequest);


```