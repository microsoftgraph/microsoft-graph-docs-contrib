---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ScheduledPermissionsRequest
{
	RequestedPermissions = new SingleResourceAzurePermissionsDefinition
	{
		OdataType = "microsoft.graph.singleResourceAzurePermissionsDefinition",
		AuthorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem
		{
			AuthorizationSystemId = "87eefd90-95a3-480a-ba42-56ff299a05ee",
			AuthorizationSystemType = "AZURE",
		},
		ActionInfo = new AzureRolePermissionsDefinitionAction
		{
			OdataType = "microsoft.graph.azureRolePermissionsDefinitionAction",
			Roles = new List<PermissionsDefinitionAzureRole>
			{
				new PermissionsDefinitionAzureRole
				{
					Id = "cdda3590-29a3-44f6-95f2-9f980659eb04",
				},
				new PermissionsDefinitionAzureRole
				{
					Id = "312a565d-c81f-4fd8-895a-4e21e48d571c",
				},
			},
		},
		IdentityInfo = new PermissionsDefinitionAuthorizationSystemIdentity
		{
			ExternalId = "alex@contoso.com",
			Source = new EdIdentitySource
			{
				OdataType = "microsoft.graph.edIdentitySource",
			},
			IdentityType = PermissionsDefinitionIdentityType.User,
		},
		ResourceId = "/subscriptions/87eefd90-95a3-480a-ba42-56ff299a05ee",
	},
	Justification = "I need to do this because I want to some new azure roles",
	Notes = "Pretty Pleaseeeee",
	ScheduleInfo = new RequestSchedule
	{
		Expiration = new ExpirationPattern
		{
			Duration = TimeSpan.Parse("PT1H"),
		},
		Recurrence = null,
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