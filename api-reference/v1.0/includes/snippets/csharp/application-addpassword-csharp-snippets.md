---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Applications.Item.MicrosoftGraphAddPassword.AddPasswordPostRequestBody
{
	PasswordCredential = new PasswordCredential
	{
		DisplayName = "Password friendly name",
	},
};
var result = await graphClient.Applications["application-id"].MicrosoftGraphAddPassword.PostAsync(requestBody);


```