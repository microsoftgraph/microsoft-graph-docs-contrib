---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceComplianceUserStatusCollectionPage userStatuses = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").userStatuses()
	.buildRequest()
	.get();

```