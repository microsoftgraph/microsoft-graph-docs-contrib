---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").userStatuses("{deviceComplianceUserStatusId}")
	.buildRequest()
	.delete();

```