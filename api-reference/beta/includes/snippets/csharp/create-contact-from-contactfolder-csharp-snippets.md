---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Contact
{
	ParentFolderId = "parentFolderId-value",
	Birthday = DateTimeOffset.Parse("2016-10-19T10:37:00Z"),
	FileAs = "fileAs-value",
	DisplayName = "displayName-value",
	GivenName = "givenName-value",
	Initials = "initials-value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.ContactFolders["{contactFolder-id}"].Contacts.PostAsync(requestBody);


```