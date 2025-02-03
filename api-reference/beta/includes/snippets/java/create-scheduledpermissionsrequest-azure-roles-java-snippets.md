---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ScheduledPermissionsRequest scheduledPermissionsRequest = new ScheduledPermissionsRequest();
SingleResourceAzurePermissionsDefinition requestedPermissions = new SingleResourceAzurePermissionsDefinition();
requestedPermissions.setOdataType("microsoft.graph.singleResourceAzurePermissionsDefinition");
PermissionsDefinitionAuthorizationSystem authorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
authorizationSystemInfo.setAuthorizationSystemId("87eefd90-95a3-480a-ba42-56ff299a05ee");
authorizationSystemInfo.setAuthorizationSystemType("AZURE");
requestedPermissions.setAuthorizationSystemInfo(authorizationSystemInfo);
AzureRolePermissionsDefinitionAction actionInfo = new AzureRolePermissionsDefinitionAction();
actionInfo.setOdataType("microsoft.graph.azureRolePermissionsDefinitionAction");
LinkedList<PermissionsDefinitionAzureRole> roles = new LinkedList<PermissionsDefinitionAzureRole>();
PermissionsDefinitionAzureRole permissionsDefinitionAzureRole = new PermissionsDefinitionAzureRole();
permissionsDefinitionAzureRole.setId("cdda3590-29a3-44f6-95f2-9f980659eb04");
roles.add(permissionsDefinitionAzureRole);
PermissionsDefinitionAzureRole permissionsDefinitionAzureRole1 = new PermissionsDefinitionAzureRole();
permissionsDefinitionAzureRole1.setId("312a565d-c81f-4fd8-895a-4e21e48d571c");
roles.add(permissionsDefinitionAzureRole1);
actionInfo.setRoles(roles);
requestedPermissions.setActionInfo(actionInfo);
PermissionsDefinitionAuthorizationSystemIdentity identityInfo = new PermissionsDefinitionAuthorizationSystemIdentity();
identityInfo.setExternalId("alex@contoso.com");
EdIdentitySource source = new EdIdentitySource();
source.setOdataType("microsoft.graph.edIdentitySource");
identityInfo.setSource(source);
identityInfo.setIdentityType(PermissionsDefinitionIdentityType.User);
requestedPermissions.setIdentityInfo(identityInfo);
requestedPermissions.setResourceId("/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee");
scheduledPermissionsRequest.setRequestedPermissions(requestedPermissions);
scheduledPermissionsRequest.setJustification("I need to do this because I want to some new azure roles");
scheduledPermissionsRequest.setNotes("Pretty Pleaseeeee");
RequestSchedule scheduleInfo = new RequestSchedule();
ExpirationPattern expiration = new ExpirationPattern();
PeriodAndDuration duration = PeriodAndDuration.ofDuration(Duration.parse("PT1H"));
expiration.setDuration(duration);
scheduleInfo.setExpiration(expiration);
scheduleInfo.setRecurrence(null);
scheduledPermissionsRequest.setScheduleInfo(scheduleInfo);
TicketInfo ticketInfo = new TicketInfo();
ticketInfo.setTicketNumber("INC1234567");
ticketInfo.setTicketSystem("ServiceNow");
ticketInfo.setTicketSubmitterIdentityId("alex@contoso.com");
ticketInfo.setTicketApproverIdentityId("alexmanager@contoso.com");
scheduledPermissionsRequest.setTicketInfo(ticketInfo);
ScheduledPermissionsRequest result = graphClient.identityGovernance().permissionsManagement().scheduledPermissionsRequests().post(scheduledPermissionsRequest);


```