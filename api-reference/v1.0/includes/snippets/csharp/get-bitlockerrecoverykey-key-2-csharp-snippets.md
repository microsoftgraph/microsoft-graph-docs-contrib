---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.InformationProtection.Bitlocker.RecoveryKeys["{bitlockerRecoveryKey-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Select = new string []{ "key" };
	requestConfiguration.Headers.Add("User-Agent", "Dsreg/10.0");
	requestConfiguration.Headers.Add("ocp-client-name", "My Friendly Client");
	requestConfiguration.Headers.Add("ocp-client-version", "1.2");
});


```