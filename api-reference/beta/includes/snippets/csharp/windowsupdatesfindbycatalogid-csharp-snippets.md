---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Windows.Updates.Products.MicrosoftGraphWindowsUpdatesFindByKbNumberWithKbNumber(1).GetAsFindByKbNumberWithKbNumberGetResponseAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "revisions($expand=catalogEntry,knowledgeBaseArticle)","knownIssues" };
});


```