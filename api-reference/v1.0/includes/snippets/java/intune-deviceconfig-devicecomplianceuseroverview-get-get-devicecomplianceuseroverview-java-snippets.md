---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceUserOverview deviceComplianceUserOverview = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").userStatusOverview()
	.buildRequest()
	.get();

```