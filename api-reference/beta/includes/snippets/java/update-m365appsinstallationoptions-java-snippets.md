---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

M365AppsInstallationOptions m365AppsInstallationOptions = new M365AppsInstallationOptions();
m365AppsInstallationOptions.updateChannel = AppsUpdateChannelType.CURRENT;

graphClient.admin().microsoft365Apps().installationOptions()
	.buildRequest()
	.patch(m365AppsInstallationOptions);

```