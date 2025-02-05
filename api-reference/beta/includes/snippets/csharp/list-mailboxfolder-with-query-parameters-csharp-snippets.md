---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.Exchange.Mailboxes["{mailbox-id}"].Folders.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "type eq 'IPF.Appointment'";
	requestConfiguration.QueryParameters.Select = new string []{ "displayName","type" };
	requestConfiguration.QueryParameters.Top = 5;
});


```