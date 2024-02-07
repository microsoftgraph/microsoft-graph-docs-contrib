---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String invoiceId = "G016907411";

AttributeSet attributeSet = AttributeSet.FULL;

graphClient.reports().partners().billing().usage().billed()
	.export(BilledUsageExportParameterSet
		.newBuilder()
		.withInvoiceId(invoiceId)
		.withAttributeSet(attributeSet)
		.build())
	.buildRequest()
	.post();

```