---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.ServicePrincipals.Item.AddPassword;
using Microsoft.Graph.Models;

var requestBody = new AddPasswordPostRequestBody
{
	PasswordCredential = new PasswordCredential
	{
		DisplayName = "Password friendly name",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AddPassword.PostAsync(requestBody);


```