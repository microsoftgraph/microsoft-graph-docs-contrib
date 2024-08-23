---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Reports.Partners.Billing.Reconciliation.Billed.MicrosoftGraphPartnersBillingExport;
using Microsoft.Graph.Models.Partners.Billing;

var requestBody = new ExportPostRequestBody
{
	InvoiceId = "G016907411",
	AttributeSet = AttributeSet.Full,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Reports.Partners.Billing.Reconciliation.Billed.MicrosoftGraphPartnersBillingExport.PostAsync(requestBody);


```