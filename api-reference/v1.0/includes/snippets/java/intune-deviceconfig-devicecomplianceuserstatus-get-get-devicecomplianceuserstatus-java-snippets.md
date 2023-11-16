---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceUserStatus deviceComplianceUserStatus = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").userStatuses("{deviceComplianceUserStatusId}")
	.buildRequest()
	.get();

```