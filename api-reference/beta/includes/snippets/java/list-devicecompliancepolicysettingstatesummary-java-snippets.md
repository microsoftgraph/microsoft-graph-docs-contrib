---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicySettingStateSummaryCollectionPage deviceCompliancePolicySettingStateSummaries = graphClient.tenantRelationships().managedTenants().deviceCompliancePolicySettingStateSummaries()
	.buildRequest()
	.get();

```