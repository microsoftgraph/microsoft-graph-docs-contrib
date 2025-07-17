---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new OneDriveForBusinessProtectionPolicy
{
	DisplayName = "OneDrive For Business Protection Policy",
	DriveProtectionUnits = new List<DriveProtectionUnit>
	{
		new DriveProtectionUnit
		{
			DirectoryObjectId = "cdd3a849-dcaf-4a85-af82-7e39fc14019",
		},
		new DriveProtectionUnit
		{
			DirectoryObjectId = "9bc069da-b746-41a4-89ab-26125c6373c7",
		},
		new DriveProtectionUnit
		{
			DirectoryObjectId = "b218eb4a-ea72-42bd-8f0b-d0bbf794bec7",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.OneDriveForBusinessProtectionPolicies.PostAsync(requestBody);


```