---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Invitation
{
	InvitedUserEmailAddress = "AdeleV@fabrikam.com",
	InviteRedirectUrl = "https://myapp.contoso.com",
	InvitedUser = new User
	{
		Id = "264e6d50-eaec-461e-b187-873b1bcf855f",
	},
	ResetRedemption = true,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Invitations.PostAsync(requestBody);


```