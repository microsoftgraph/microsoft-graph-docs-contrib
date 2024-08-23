---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.ServicePrincipals.Item.UpdatePasswordSingleSignOnCredentials;
using Microsoft.Graph.Beta.Models;

var requestBody = new UpdatePasswordSingleSignOnCredentialsPostRequestBody
{
	Id = "5793aa3b-cca9-4794-679a240f8b58",
	Credentials = new List<Credential>
	{
		new Credential
		{
			FieldId = "param_username",
			Value = "myusername",
			Type = "username",
		},
		new Credential
		{
			FieldId = "param_password",
			Value = "pa$$w0rd",
			Type = "password",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.ServicePrincipals["{servicePrincipal-id}"].UpdatePasswordSingleSignOnCredentials.PostAsync(requestBody);


```