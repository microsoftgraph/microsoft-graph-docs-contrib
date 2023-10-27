---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuditEvent
{
	OdataType = "#microsoft.graph.auditEvent",
	DisplayName = "Display Name value",
	ComponentName = "Component Name value",
	Actor = new AuditActor
	{
		OdataType = "microsoft.graph.auditActor",
		AuditActorType = "Audit Actor Type value",
		UserPermissions = new List<string>
		{
			"User Permissions value",
		},
		ApplicationId = "Application Id value",
		ApplicationDisplayName = "Application Display Name value",
		UserPrincipalName = "User Principal Name value",
		ServicePrincipalName = "Service Principal Name value",
		IpAddress = "Ip Address value",
		UserId = "User Id value",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"type" , "Type value"
			},
		},
	},
	Activity = "Activity value",
	ActivityDateTime = DateTimeOffset.Parse("2016-12-31T23:59:51.6363086-08:00"),
	ActivityType = "Activity Type value",
	ActivityOperationType = "Activity Operation Type value",
	ActivityResult = "Activity Result value",
	CorrelationId = Guid.Parse("52effe71-fe71-52ef-71fe-ef5271feef52"),
	Resources = new List<AuditResource>
	{
		new AuditResource
		{
			OdataType = "microsoft.graph.auditResource",
			DisplayName = "Display Name value",
			ModifiedProperties = new List<AuditProperty>
			{
				new AuditProperty
				{
					OdataType = "microsoft.graph.auditProperty",
					DisplayName = "Display Name value",
					OldValue = "Old Value value",
					NewValue = "New Value value",
				},
			},
			AuditResourceType = "Audit Resource Type value",
			ResourceId = "Resource Id value",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"type" , "Type value"
				},
			},
		},
	},
	Category = "Category value",
};
var result = await graphClient.DeviceManagement.AuditEvents["{auditEvent-id}"].PatchAsync(requestBody);


```