---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Reports.AppCredentialSignInActivities.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "keyId eq '83f45296-fb8f-4aaa-a399-ac51084e02b7'";
});


```