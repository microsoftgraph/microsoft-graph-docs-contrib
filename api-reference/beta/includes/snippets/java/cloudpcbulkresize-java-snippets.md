---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> cloudPcIdsList = new LinkedList<String>();
cloudPcIdsList.add("30d0e128-de93-41dc-89ec-33d84bb662a0");
cloudPcIdsList.add("7c82a3e3-9459-44e4-94d9-b92f93bf78dd");

String targetServicePlanId = "662009bc-7732-4f6f-8726-25883518b33e";

graphClient.deviceManagement().virtualEndpoint().cloudPCs()
	.bulkResize(CloudPCBulkResizeParameterSet
		.newBuilder()
		.withCloudPcIds(cloudPcIdsList)
		.withTargetServicePlanId(targetServicePlanId)
		.build())
	.buildRequest()
	.post();

```