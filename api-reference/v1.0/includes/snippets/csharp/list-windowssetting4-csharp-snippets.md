---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Settings.Windows.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "windowsDeviceId eq '67585f9f-ee4b-4dd8-808e-d88375d66ef7'";
});


```