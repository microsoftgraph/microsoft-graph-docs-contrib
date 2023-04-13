---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcUserAccountType userAccountType = CloudPcUserAccountType.ADMINISTRATOR;

graphClient.deviceManagement().virtualEndpoint().cloudPCs("4b5ad5e0-6a0b-4ffc-818d-36bb23cf4dbd")
	.changeUserAccountType(CloudPCChangeUserAccountTypeParameterSet
		.newBuilder()
		.withUserAccountType(userAccountType)
		.build())
	.buildRequest()
	.post();

```