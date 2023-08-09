---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicyAssignment deviceCompliancePolicyAssignment = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").assignments("{deviceCompliancePolicyAssignmentId}")
	.buildRequest()
	.get();

```