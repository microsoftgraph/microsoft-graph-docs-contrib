---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Invitation
{
	InvitedUserDisplayName = "John Doe (Tailspin Toys)",
	InvitedUserEmailAddress = "john@tailspintoys.com",
	SendInvitationMessage = false,
	InviteRedirectUrl = "https://myapps.microsoft.com",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Invitations.PostAsync(requestBody);


```