---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var federatedIdentityCredential = new FederatedIdentityCredential
{
	Name = "testing02",
	Issuer = "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
	Subject = "a7d388c3-5e3f-4959-ac7d-786b3383006a",
	Description = "Updated description",
	Audiences = new List<String>()
	{
		"api://AzureADTokenExchange"
	}
};

await graphClient.Applications["{application-id}"].FederatedIdentityCredentials["{federatedIdentityCredential-id}"]
	.Request()
	.UpdateAsync(federatedIdentityCredential);

```