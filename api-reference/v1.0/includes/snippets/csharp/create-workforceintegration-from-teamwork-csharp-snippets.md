---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WorkforceIntegration
{
	DisplayName = "displayName-value",
	ApiVersion = 99,
	Encryption = new WorkforceIntegrationEncryption
	{
		Protocol = WorkforceIntegrationEncryptionProtocol.SharedSecret,
		Secret = "secret-value",
	},
	IsActive = true,
	Url = "url-value",
	SupportedEntities = WorkforceIntegrationSupportedEntities.None,
};
var result = await graphClient.Teamwork.WorkforceIntegrations.PostAsync(requestBody);


```