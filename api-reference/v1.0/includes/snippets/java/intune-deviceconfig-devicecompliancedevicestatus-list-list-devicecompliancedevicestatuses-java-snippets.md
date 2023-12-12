---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceDeviceStatusCollectionPage deviceStatuses = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").deviceStatuses()
	.buildRequest()
	.get();

```