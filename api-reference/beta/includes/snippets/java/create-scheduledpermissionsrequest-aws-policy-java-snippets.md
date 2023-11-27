---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ScheduledPermissionsRequest scheduledPermissionsRequest = new ScheduledPermissionsRequest();
AwsPermissionsDefinition requestedPermissions = new AwsPermissionsDefinition();
PermissionsDefinitionAuthorizationSystem authorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem();
authorizationSystemInfo.authorizationSystemId = "956987887735";
authorizationSystemInfo.authorizationSystemType = "AWS";
requestedPermissions.authorizationSystemInfo = authorizationSystemInfo;
AwsPolicyPermissionsDefinitionAction actionInfo = new AwsPolicyPermissionsDefinitionAction();
LinkedList<PermissionsDefinitionAwsPolicy> policiesList = new LinkedList<PermissionsDefinitionAwsPolicy>();
PermissionsDefinitionAwsPolicy policies = new PermissionsDefinitionAwsPolicy();
policies.id = "arn:aws:iam::956987887735:policy/AddUserToGroup";
policiesList.add(policies);
PermissionsDefinitionAwsPolicyCollectionResponse permissionsDefinitionAwsPolicyCollectionResponse = new PermissionsDefinitionAwsPolicyCollectionResponse();
permissionsDefinitionAwsPolicyCollectionResponse.value = policiesList;
PermissionsDefinitionAwsPolicyCollectionPage permissionsDefinitionAwsPolicyCollectionPage = new PermissionsDefinitionAwsPolicyCollectionPage(permissionsDefinitionAwsPolicyCollectionResponse, null);
actionInfo.policies = permissionsDefinitionAwsPolicyCollectionPage;
actionInfo.assignToRoleId = "arn:aws:aim::956987887735:role/saml-user";
requestedPermissions.actionInfo = actionInfo;
PermissionsDefinitionAuthorizationSystemIdentity identityInfo = new PermissionsDefinitionAuthorizationSystemIdentity();
identityInfo.externalId = "alex@contoso.com";
SamlIdentitySource source = new SamlIdentitySource();
identityInfo.source = source;
identityInfo.identityType = PermissionsDefinitionIdentityType.USER;
requestedPermissions.identityInfo = identityInfo;
scheduledPermissionsRequest.requestedPermissions = requestedPermissions;
scheduledPermissionsRequest.justification = "I need to do this because I want to add a user to a group";
scheduledPermissionsRequest.notes = "Pretty Please";
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