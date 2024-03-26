---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.reports.partners.billing.usage.billed.microsoftgraphpartnersbillingexport.ExportPostRequestBody exportPostRequestBody = new com.microsoft.graph.reports.partners.billing.usage.billed.microsoftgraphpartnersbillingexport.ExportPostRequestBody();
exportPostRequestBody.setInvoiceId("G016907411");
exportPostRequestBody.setAttributeSet(com.microsoft.graph.models.partners.billing.AttributeSet.Full);
var result = graphClient.reports().partners().billing().usage().billed().microsoftGraphPartnersBillingExport().post(exportPostRequestBody);


```