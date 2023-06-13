---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.ApplicationTemplates.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "displayName eq 'AWS IAM Identity Center (successor to AWS Single Sign-On)'";
});


```