---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ScheduledPermissionsRequest scheduledPermissionsRequest = new ScheduledPermissionsRequest();
SingleResourceGcpPermissionsDefinition requestedPermissions = new SingleResourceGcpPermissionsDefinition();
PermissionsDefinitionAuthorizationSystem authorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
authorizationSystemInfo.authorizationSystemId = "carbide-bonsai-205017";
authorizationSystemInfo.authorizationSystemType = "GCP";
requestedPermissions.authorizationSystemInfo = authorizationSystemInfo;
GcpActionPermissionsDefinitionAction actionInfo = new GcpActionPermissionsDefinitionAction();
LinkedList<String> actionsList = new LinkedList<String>();
actionsList.add("aiplatform:dataitems");
actionInfo.actions = actionsList;
requestedPermissions.actionInfo = actionInfo;
PermissionsDefinitionAuthorizationSystemIdentity identityInfo = new PermissionsDefinitionAuthorizationSystemIdentity();
identityInfo.externalId = "alex@contoso.com";
EdIdentitySource source = new EdIdentitySource();
identityInfo.source = source;
identityInfo.identityType = PermissionsDefinitionIdentityType.USER;
requestedPermissions.identityInfo = identityInfo;
requestedPermissions.resourceId = "carbide-bonsai-205017";
scheduledPermissionsRequest.requestedPermissions = requestedPermissions;
scheduledPermissionsRequest.justification = "I need to do this because I want to code my own chat GPT-3 bot on GCP";
scheduledPermissionsRequest.notes = "Pretty Pleaseeeee";
RequestSchedule scheduleInfo = new RequestSchedule();
ExpirationPattern expiration = new ExpirationPattern();
expiration.duration = DatatypeFactory.newInstance().newDuration("PT1H");
scheduleInfo.expiration = expiration;
scheduledPermissionsRequest.scheduleInfo = scheduleInfo;
TicketInfo ticketInfo = new TicketInfo();
ticketInfo.ticketNumber = "INC1234567";
ticketInfo.ticketSystem = "ServiceNow";
ticketInfo.ticketSubmitterIdentityId = "alex@contoso.com";
ticketInfo.ticketApproverIdentityId = "alexmanager@contoso.com";
scheduledPermissionsRequest.ticketInfo = ticketInfo;

graphClient.identityGovernance().permissionsManagement().scheduledPermissionsRequests()
	.buildRequest()
	.post(scheduledPermissionsRequest);

```