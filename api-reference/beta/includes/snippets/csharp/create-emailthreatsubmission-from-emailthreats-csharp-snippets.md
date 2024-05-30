---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new EmailUrlThreatSubmission
{
	OdataType = "#microsoft.graph.security.emailUrlThreatSubmission",
	Category = SubmissionCategory.Spam,
	RecipientEmailAddress = "tifc@contoso.com",
	MessageUrl = "https://graph.microsoft.com/beta/users/c52ce8db-3e4b-4181-93c4-7d6b6bffaf60/messages/AAMkADU3MWUxOTU0LWNlOTEt=",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.ThreatSubmission.EmailThreats.PostAsync(requestBody);


```