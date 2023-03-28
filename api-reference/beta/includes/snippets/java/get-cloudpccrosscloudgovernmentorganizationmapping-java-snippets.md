---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcCrossCloudGovernmentOrganizationMapping cloudPcCrossCloudGovernmentOrganizationMapping = graphClient.deviceManagement().virtualEndpoint().crossCloudGovernmentOrganizationMapping()
	.buildRequest()
	.get();

```