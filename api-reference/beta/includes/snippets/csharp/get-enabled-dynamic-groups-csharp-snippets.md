---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Groups.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "mailEnabled eq false and securityEnabled eq true and NOT) and membershipRuleProcessingState eq 'On'";
	requestConfiguration.QueryParameters.Count = true;
	requestConfiguration.QueryParameters.Select = new string []{ "id","membershipRule","membershipRuleProcessingState" };
});


```