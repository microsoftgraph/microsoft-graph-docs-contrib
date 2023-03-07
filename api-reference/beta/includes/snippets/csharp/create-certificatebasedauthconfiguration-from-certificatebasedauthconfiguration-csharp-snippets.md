---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Organization.Item.CertificateBasedAuthConfiguration.CertificateBasedAuthConfigurationPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"certificateAuthorities" , new List<>
			{
				new 
				{
					IsRootAuthority = true,
					Certificate = "Binary",
				},
			}
		},
	},
};
await graphClient.Organization["{organization-id}"].CertificateBasedAuthConfiguration.PostAsync(requestBody);


```