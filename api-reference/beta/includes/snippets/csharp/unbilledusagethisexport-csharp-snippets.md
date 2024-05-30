---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Reports.Partners.Billing.Usage.Unbilled.MicrosoftGraphPartnersBillingExport;
using Microsoft.Graph.Beta.Models.Partners.Billing;

var requestBody = new ExportPostRequestBody
{
	CurrencyCode = "USD",
	AttributeSet = AttributeSet.Full,
	BillingPeriod = BillingPeriod.Current,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Reports.Partners.Billing.Usage.Unbilled.MicrosoftGraphPartnersBillingExport.PostAsync(requestBody);


```