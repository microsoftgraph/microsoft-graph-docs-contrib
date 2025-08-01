---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new HardwareOathTokenAuthenticationMethodDevice
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@context" , "#$delta"
		},
		{
			"value" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"@contentId", new UntypedString("1")
					},
					{
						"serialNumber", new UntypedString("TOTP123456")
					},
					{
						"manufacturer", new UntypedString("Contoso")
					},
					{
						"model", new UntypedString("Hardware Token 1000")
					},
					{
						"secretKey", new UntypedString("6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB")
					},
					{
						"timeIntervalInSeconds", new UntypedString("30")
					},
					{
						"hashFunction", new UntypedString("hmacsha1")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"@contentId", new UntypedString("2")
					},
					{
						"serialNumber", new UntypedString("TOTP654321")
					},
					{
						"manufacturer", new UntypedString("Contoso")
					},
					{
						"model", new UntypedString("Hardware Token 1000")
					},
					{
						"secretKey", new UntypedString("TXYZAE6PJ4UZF3NNKIW3HQNFUF7WFTFB")
					},
					{
						"timeIntervalInSeconds", new UntypedString("30")
					},
					{
						"hashFunction", new UntypedString("hmacsha1")
					},
					{
						"assignTo", new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"id", new UntypedString("0cadbf92-####-####-####-############")
							},
						})
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.AuthenticationMethodDevices.HardwareOathDevices.PostAsync(requestBody);


```