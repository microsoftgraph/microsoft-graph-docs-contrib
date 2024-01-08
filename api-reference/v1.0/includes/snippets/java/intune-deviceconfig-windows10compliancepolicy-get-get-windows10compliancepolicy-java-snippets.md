---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicy deviceCompliancePolicy = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}")
	.buildRequest()
	.get();

```