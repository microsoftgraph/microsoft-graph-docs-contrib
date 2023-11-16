---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceCompliancePolicyCollectionPage deviceCompliancePolicies = graphClient.deviceManagement().deviceCompliancePolicies()
	.buildRequest()
	.get();

```