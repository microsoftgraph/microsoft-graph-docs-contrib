---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceDeviceStatus deviceComplianceDeviceStatus = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").deviceStatuses("{deviceComplianceDeviceStatusId}")
	.buildRequest()
	.get();

```