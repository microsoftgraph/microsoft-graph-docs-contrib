---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

M365AppsInstallationOptions m365AppsInstallationOptions = new M365AppsInstallationOptions();
m365AppsInstallationOptions.setUpdateChannel(AppsUpdateChannelType.Current);
M365AppsInstallationOptions result = graphClient.admin().microsoft365Apps().installationOptions().patch(m365AppsInstallationOptions);


```