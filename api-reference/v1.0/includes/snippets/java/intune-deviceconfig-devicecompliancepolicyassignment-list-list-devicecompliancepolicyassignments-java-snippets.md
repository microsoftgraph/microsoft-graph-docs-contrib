---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicyAssignmentCollectionPage assignments = graphClient.deviceManagement().deviceCompliancePolicies("{deviceCompliancePolicyId}").assignments()
	.buildRequest()
	.get();

```