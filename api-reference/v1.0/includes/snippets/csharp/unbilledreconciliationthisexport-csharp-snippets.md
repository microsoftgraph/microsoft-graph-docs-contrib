---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Reports.Partners.Billing.Reconciliation.Unbilled.MicrosoftGraphPartnersBillingExport;
using Microsoft.Graph.Models.Partners.Billing;

var requestBody = new ExportPostRequestBody
{
	AttributeSet = AttributeSet.Full,
	BillingPeriod = BillingPeriod.Current,
	CurrencyCode = "USD",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Reports.Partners.Billing.Reconciliation.Unbilled.MicrosoftGraphPartnersBillingExport.PostAsync(requestBody);


```