---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Exchange.Mailboxes["{mailbox-id}"].Folders["{mailboxFolder-id}"].Items.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "createdDateTime ge 2021-08-21 and createdDateTime lt 2021-09-16";
	requestConfiguration.QueryParameters.Select = new string []{ "type","size" };
	requestConfiguration.QueryParameters.Top = 1;
});


```