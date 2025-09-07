---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Identities.IdentityAccounts.Item.MicrosoftGraphSecurityInvokeAction;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new InvokeActionPostRequestBody
{
	AccountId = "256db173-930a-4991-9061-0d51a9a93ba5",
	Action = ActionObject.Disable,
	IdentityProvider = IdentityProvider.ActiveDirectory,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Identities.IdentityAccounts["{identityAccounts-id}"].MicrosoftGraphSecurityInvokeAction.PostAsync(requestBody);


```