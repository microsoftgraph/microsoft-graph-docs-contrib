---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ScheduledPermissionsRequest
{
	RequestedPermissions = new SingleResourceGcpPermissionsDefinition
	{
		OdataType = "microsoft.graph.singleResourceGcpPermissionsDefinition",
		AuthorizationSystemInfo = new PermissionsDefinitionAuthorizationSystem
		{
			AuthorizationSystemId = "carbide-bonsai-205017",
			AuthorizationSystemType = "GCP",
		},
		ActionInfo = new GcpRolePermissionsDefinitionAction
		{
			OdataType = "microsoft.graph.gcpRolePermissionsDefinitionAction",
			Roles = new List<PermissionsDefinitionGcpRole>
			{
				new PermissionsDefinitionGcpRole
				{
					Id = "roles/dialogflow.aamAdmin",
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
		ResourceId = "carbide-bonsai-205017",
	},
	Justification = "I need to do this because I want to be an administrator",
	Notes = "Pretty Pleaseeeee",
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = null,
		Expiration = new ExpirationPattern
		{
			Duration = TimeSpan.Parse("PT1H"),
		},
		Recurrence = null,
	},
	TicketInfo = new TicketInfo
	{
		TicketNumber = "123456",
		TicketSystem = "ServiceNow",
		TicketSubmitterIdentityId = "alex@contoso.com",
		TicketApproverIdentityId = "alexmanager@contoso.com",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.PermissionsManagement.ScheduledPermissionsRequests.PostAsync(requestBody);


```