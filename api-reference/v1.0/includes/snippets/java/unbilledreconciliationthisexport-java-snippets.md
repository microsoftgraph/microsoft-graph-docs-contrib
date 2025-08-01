---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.reports.partners.billing.reconciliation.unbilled.microsoftgraphpartnersbillingexport.ExportPostRequestBody exportPostRequestBody = new com.microsoft.graph.reports.partners.billing.reconciliation.unbilled.microsoftgraphpartnersbillingexport.ExportPostRequestBody();
exportPostRequestBody.setAttributeSet(com.microsoft.graph.models.partners.billing.AttributeSet.Full);
exportPostRequestBody.setBillingPeriod(com.microsoft.graph.models.partners.billing.BillingPeriod.Current);
exportPostRequestBody.setCurrencyCode("USD");
var result = graphClient.reports().partners().billing().reconciliation().unbilled().microsoftGraphPartnersBillingExport().post(exportPostRequestBody);


```