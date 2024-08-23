---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Collaboration.AnalyzedEmails.MicrosoftGraphSecurityRemediate;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new RemediatePostRequestBody
{
	DisplayName = "Clean up Phish email",
	Description = "Delete email",
	Severity = RemediationSeverity.Medium,
	Action = RemediationAction.SoftDelete,
	RemediateSendersCopy = false,
	AnalyzedEmails = new List<AnalyzedEmail>
	{
		new AnalyzedEmail
		{
			NetworkMessageId = "73ca4154-58d8-43d0-a890-08dc18c52e6d",
			RecipientEmailAddress = "hannah.jarvis@contoso.com",
		},
		new AnalyzedEmail
		{
			NetworkMessageId = "73ca4154-58d8-43d0-a890-08dc18c52e6d",
			RecipientEmailAddress = "preston.morales@contoso.com",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Security.Collaboration.AnalyzedEmails.MicrosoftGraphSecurityRemediate.PostAsync(requestBody);


```