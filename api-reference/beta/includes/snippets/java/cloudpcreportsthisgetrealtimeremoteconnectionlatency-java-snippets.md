---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.deviceManagement().virtualEndpoint().reports()
	.getRealTimeRemoteConnectionLatency(CloudPcReportsGetRealTimeRemoteConnectionLatencyParameterSet
		.newBuilder()
		.withCloudPcId("f5ff445f-7488-40f8-8ab9-ee784a9fffff")
		.build())
	.buildRequest()
	.get();

```