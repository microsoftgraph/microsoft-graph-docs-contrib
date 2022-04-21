---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcOrganizationSettings cloudPcOrganizationSettings = graphClient.deviceManagement().virtualEndpoint().organizationSettings()
	.buildRequest()
	.get();

```