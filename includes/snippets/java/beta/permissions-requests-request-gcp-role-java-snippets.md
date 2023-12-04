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
GcpRolePermissionsDefinitionAction actionInfo = new GcpRolePermissionsDefinitionAction();
LinkedList<PermissionsDefinitionAzureRole> rolesList = new LinkedList<PermissionsDefinitionAzureRole>();
PermissionsDefinitionAzureRole roles = new PermissionsDefinitionAzureRole();
roles.id = "roles/dialogflow.aamAdmin";
rolesList.add(roles);
PermissionsDefinitionAzureRoleCollectionResponse permissionsDefinitionAzureRoleCollectionResponse = new PermissionsDefinitionAzureRoleCollectionResponse();
permissionsDefinitionAzureRoleCollectionResponse.value = rolesList;
PermissionsDefinitionAzureRoleCollectionPage permissionsDefinitionAzureRoleCollectionPage = new PermissionsDefinitionAzureRoleCollectionPage(permissionsDefinitionAzureRoleCollectionResponse, null);
actionInfo.roles = permissionsDefinitionAzureRoleCollectionPage;
requestedPermissions.actionInfo = actionInfo;
PermissionsDefinitionAuthorizationSystemIdentity identityInfo = new PermissionsDefinitionAuthorizationSystemIdentity();
identityInfo.externalId = "alex@contoso.com";
EdIdentitySource source = new EdIdentitySource();
identityInfo.source = source;
identityInfo.identityType = PermissionsDefinitionIdentityType.USER;
requestedPermissions.identityInfo = identityInfo;
requestedPermissions.resourceId = "carbide-bonsai-205017";
scheduledPermissionsRequest.requestedPermissions = requestedPermissions;
scheduledPermissionsRequest.justification = "I need to do this because I want to be an administrator";
scheduledPermissionsRequest.notes = "Pretty Pleaseeeee";
RequestSchedule scheduleInfo = new RequestSchedule();
scheduleInfo.startDateTime = OffsetDateTimeSerializer.deserialize("null");
ExpirationPattern expiration = new ExpirationPattern();
expiration.duration = DatatypeFactory.newInstance().newDuration("PT1H");
scheduleInfo.expiration = expiration;
scheduleInfo.recurrence = null;
scheduledPermissionsRequest.scheduleInfo = scheduleInfo;
TicketInfo ticketInfo = new TicketInfo();
ticketInfo.ticketNumber = "123456";
ticketInfo.ticketSystem = "ServiceNow";
ticketInfo.ticketSubmitterIdentityId = "alex@contoso.com";
ticketInfo.ticketApproverIdentityId = "alexmanager@contoso.com";
scheduledPermissionsRequest.ticketInfo = ticketInfo;

graphClient.identityGovernance().permissionsManagement().scheduledPermissionsRequests()
	.buildRequest()
	.post(scheduledPermissionsRequest);

```