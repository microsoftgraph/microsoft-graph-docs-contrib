---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new FederatedIdentityCredential
{
	Name = "testing02",
	Issuer = "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
	Subject = "a7d388c3-5e3f-4959-ac7d-786b3383006a",
	Description = "Updated description",
	Audiences = new List<string>
	{
		"api://AzureADTokenExchange",
	},
};
var result = await graphClient.Applications["{application-id}"].FederatedIdentityCredentials["{federatedIdentityCredential-id}"].PatchAsync(requestBody);


```