---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPCGetProvisionedCloudPCsCollectionPage getProvisionedCloudPCs = graphClient.deviceManagement().virtualEndpoint().cloudPCs()
	.getProvisionedCloudPCs(CloudPCGetProvisionedCloudPCsParameterSet
		.newBuilder()
		.withGroupId("30d0e128-de93-41dc-89ec-33d84bb662a0")
		.withServicePlanId("9ecf691d-8b82-46cb-b254-cd061b2c02fb")
		.build())
	.buildRequest()
	.get();

```