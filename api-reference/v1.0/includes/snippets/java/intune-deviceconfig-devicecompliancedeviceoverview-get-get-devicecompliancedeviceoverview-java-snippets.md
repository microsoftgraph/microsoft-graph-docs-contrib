---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceDeviceOverview deviceComplianceDeviceOverview = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").deviceStatusOverview()
	.buildRequest()
	.get();

```