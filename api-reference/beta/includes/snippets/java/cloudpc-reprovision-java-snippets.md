---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcUserAccountType userAccountType = CloudPcUserAccountType.ADMINISTRATOR;

CloudPcOperatingSystem osVersion = CloudPcOperatingSystem.WINDOWS10;

graphClient.deviceManagement().virtualEndpoint().cloudPCs("4b5ad5e0-6a0b-4ffc-818d-36bb23cf4dbd")
	.reprovision(CloudPCReprovisionParameterSet
		.newBuilder()
		.withUserAccountType(userAccountType)
		.withOsVersion(osVersion)
		.build())
	.buildRequest()
	.post();

```