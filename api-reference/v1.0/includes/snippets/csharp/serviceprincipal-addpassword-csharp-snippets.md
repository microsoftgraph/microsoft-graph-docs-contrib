---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.ServicePrincipals.Item.MicrosoftGraphAddPassword.AddPasswordPostRequestBody
{
	PasswordCredential = new PasswordCredential
	{
		DisplayName = "Password friendly name",
	},
};
var result = await graphClient.ServicePrincipals["servicePrincipal-id"].MicrosoftGraphAddPassword.PostAsync(requestBody);


```