---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String currencyCode = "USD";

AttributeSet attributeSet = AttributeSet.FULL;

BillingPeriod billingPeriod = BillingPeriod.CURRENT;

graphClient.reports().partners().billing().usage().unbilled()
	.export(UnbilledUsageExportParameterSet
		.newBuilder()
		.withCurrencyCode(currencyCode)
		.withBillingPeriod(billingPeriod)
		.withAttributeSet(attributeSet)
		.build())
	.buildRequest()
	.post();

```