---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Partner.Security;

var requestBody = new PartnerSecurityAlert
{
	Status = SecurityAlertStatus.Resolved,
	ResolvedReason = SecurityAlertResolvedReason.Fraud,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Partner.SecurityAlerts["{partnerSecurityAlert-id}"].PatchAsync(requestBody);


```