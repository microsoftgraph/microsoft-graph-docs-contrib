---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new AuditLogQuery
{
	OdataType = "#microsoft.graph.security.auditLogQuery",
	DisplayName = "String",
	FilterStartDateTime = DateTimeOffset.Parse("String (timestamp)"),
	FilterEndDateTime = DateTimeOffset.Parse("String (timestamp)"),
	KeywordFilter = "String",
	OperationFilters = new List<string>
	{
		"String",
	},
	UserPrincipalNameFilters = new List<string>
	{
		"String",
	},
	IpAddressFilters = new List<string>
	{
		"String",
	},
	ObjectIdFilters = new List<string>
	{
		"String",
	},
	AdministrativeUnitIdFilters = new List<string>
	{
		"String",
	},
	Status = AuditLogQueryStatus.NotStarted,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"recordTypeFilter" , "String"
		},
		{
			"serviceFilter" , "String"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.AuditLog.Queries.PostAsync(requestBody);


```