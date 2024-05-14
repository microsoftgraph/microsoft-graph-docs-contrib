---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models.Search;

var requestBody = new Acronym
{
	DisplayName = "GDPR",
	StandsFor = "General Data Protection Regulation",
	Description = "A European Union (EU) regulation on data protection and privacy in the EU and the European Economic Area (EEA) that enhances individuals' control and rights over their personal data, simplifies the regulatory environment for international business, and addresses the transfer of personal data outside the EU and EEA areas.",
	WebUrl = "http://contoso.com/GDPR",
	State = AnswerState.Published,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Search.Acronyms.PostAsync(requestBody);


```