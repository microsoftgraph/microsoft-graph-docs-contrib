---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ScheduledPermissionsRequest scheduledPermissionsRequest = new ScheduledPermissionsRequest();
SingleResourceAzurePermissionsDefinition requestedPermissions = new SingleResourceAzurePermissionsDefinition();
PermissionsDefinitionAuthorizationSystem authorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
authorizationSystemInfo.authorizationSystemId = "87eefd90-95a3-480a-ba42-56ff299a05ee";
authorizationSystemInfo.authorizationSystemType = "AZURE";
requestedPermissions.authorizationSystemInfo = authorizationSystemInfo;
AzureRolePermissionsDefinitionAction actionInfo = new AzureRolePermissionsDefinitionAction();
LinkedList<PermissionsDefinitionAzureRole> rolesList = new LinkedList<PermissionsDefinitionAzureRole>();
PermissionsDefinitionAzureRole roles = new PermissionsDefinitionAzureRole();
roles.id = "cdda3590-29a3-44f6-95f2-9f980659eb04";
rolesList.add(roles);
PermissionsDefinitionAzureRole roles1 = new PermissionsDefinitionAzureRole();
roles1.id = "312a565d-c81f-4fd8-895a-4e21e48d571c";
rolesList.add(roles1);
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
requestedPermissions.resourceId = "/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee";
scheduledPermissionsRequest.requestedPermissions = requestedPermissions;
scheduledPermissionsRequest.justification = "I need to do this because I want to some new azure roles";
scheduledPermissionsRequest.notes = "Pretty Pleaseeeee";
RequestSchedule scheduleInfo = new RequestSchedule();
ExpirationPattern expiration = new ExpirationPattern();
expiration.duration = DatatypeFactory.newInstance().newDuration("PT1H");
scheduleInfo.expiration = expiration;
scheduleInfo.recurrence = null;
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