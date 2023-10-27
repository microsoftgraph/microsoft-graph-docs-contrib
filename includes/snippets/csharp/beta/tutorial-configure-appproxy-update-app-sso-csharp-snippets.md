---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Applications.Item.Application
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"onPremisesPublishing" , new 
			{
				SingleSignOnSettings = new 
				{
					KerberosSignOnSettings = new 
					{
						KerberosServicePrincipalName = "HTTP/iwademo.contoso.com",
						KerberosSignOnMappingAttributeType = "userPrincipalName",
					},
					SingleSignOnMode = "onPremisesKerberos",
				},
			}
		},
	},
};
await graphClient.Applications["{application-id}"].PatchAsync(requestBody);


```