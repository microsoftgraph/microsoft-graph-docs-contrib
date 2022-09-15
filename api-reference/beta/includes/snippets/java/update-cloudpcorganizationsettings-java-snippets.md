---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcOrganizationSettings cloudPcOrganizationSettings = new CloudPcOrganizationSettings();
cloudPcOrganizationSettings.userAccountType = CloudPcUserAccountType.STANDARD_USER;
cloudPcOrganizationSettings.osVersion = CloudPcOperatingSystem.WINDOWS11;

graphClient.deviceManagement().virtualEndpoint().organizationSettings()
	.buildRequest()
	.patch(cloudPcOrganizationSettings);

```