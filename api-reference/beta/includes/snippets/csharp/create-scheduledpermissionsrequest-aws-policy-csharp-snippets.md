---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ScheduledPermissionsRequest
{
	RequestedPermissions = new AwsPermissionsDefinition
	{
		OdataType = "#microsoft.graph.awsPermissionsDefinition",
		AuthorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem
		{
			AuthorizationSystemId = "956987887735",
			AuthorizationSystemType = "AWS",
		},
		ActionInfo = new AwsPolicyPermissionsDefinitionAction
		{
			OdataType = "microsoft.graph.awsPolicyPermissionsDefinitionAction",
			Policies = new List<PermissionsDefinitionAwsPolicy>
			{
				new PermissionsDefinitionAwsPolicy
				{
					Id = "arn:aws:iam::956987887735:policy/AddUserToGroup",
				},
			},
			AssignToRoleId = "arn:aws:aim::956987887735:role/saml-user",
		},
		IdentityInfo = new PermissionsDefinitionAuthorizationSystemIdentity
		{
			ExternalId = "alex@contoso.com",
			Source = new SamlIdentitySource
			{
				OdataType = "microsoft.graph.samlIdentitySource",
			},
			IdentityType = PermissionsDefinitionIdentityType.User,
		},
	},
	Justification = "I need to do this because I want to add a user to a group",
	Notes = "Pretty Please",
	ScheduleInfo = new RequestSchedule
	{
		Expiration = new ExpirationPattern
		{
			Duration = TimeSpan.Parse("PT1H"),
		},
	},
	TicketInfo = new TicketInfo
	{
		TicketNumber = "INC1234567",
		TicketSystem = "ServiceNow",
		TicketSubmitterIdentityId = "alex@contoso.com",
		TicketApproverIdentityId = "alexmanager@contoso.com",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.PermissionsManagement.ScheduledPermissionsRequests.PostAsync(requestBody);


```