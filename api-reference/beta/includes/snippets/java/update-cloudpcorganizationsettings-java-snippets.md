---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CloudPcOrganizationSettings cloudPcOrganizationSettings = new CloudPcOrganizationSettings();
cloudPcOrganizationSettings.enableMEMAutoEnroll = true;
cloudPcOrganizationSettings.osVersion = CloudPcOperatingSystem.WINDOWS11;
cloudPcOrganizationSettings.userAccountType = CloudPcUserAccountType.STANDARD_USER;
CloudPcWindowsSettings windowsSettings = new CloudPcWindowsSettings();
windowsSettings.language = "en-US";
cloudPcOrganizationSettings.windowsSettings = windowsSettings;

graphClient.deviceManagement().virtualEndpoint().organizationSettings()
	.buildRequest()
	.patch(cloudPcOrganizationSettings);

```