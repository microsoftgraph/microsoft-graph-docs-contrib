---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new MailboxRestoreArtifactsBulkAdditionRequest
{
	DisplayName = "Usermailbox-BulkRestoreArtifacts",
	Mailboxes = new List<string>
	{
		"contoso1@micorosft.com",
		"consotos2@microsoft.com",
		"contoso3@microsoft.com",
	},
	ProtectionTimePeriod = new TimePeriod
	{
		StartDateTime = DateTimeOffset.Parse("2021-01-01T00:00:00Z"),
		EndDateTime = DateTimeOffset.Parse("2021-01-08T00:00:00Z"),
	},
	DestinationType = DestinationType.New,
	Tags = RestorePointTags.FastRestore,
	RestorePointPreference = RestorePointPreference.Latest,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Solutions.BackupRestore.ExchangeRestoreSessions["{exchangeRestoreSession-id}"].MailboxRestoreArtifactsBulkAdditionRequests.PostAsync(requestBody);


```