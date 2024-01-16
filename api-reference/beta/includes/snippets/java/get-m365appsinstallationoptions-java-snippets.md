---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

M365AppsInstallationOptions m365AppsInstallationOptions = graphClient.admin().microsoft365Apps().installationOptions()
	.buildRequest()
	.get();

```