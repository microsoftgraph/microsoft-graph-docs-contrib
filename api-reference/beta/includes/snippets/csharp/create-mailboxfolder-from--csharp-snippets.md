---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new MailboxFolder
{
	DisplayName = "Announcements",
	Type = "IPF.Note",
	SingleValueExtendedProperties = new List<SingleValueLegacyExtendedProperty>
	{
		new SingleValueLegacyExtendedProperty
		{
			Id = "String 0x3001",
			Value = "Announcements",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Exchange.Mailboxes["{mailbox-id}"].Folders.PostAsync(requestBody);


```