---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdminReportSettings adminReportSettings = new AdminReportSettings();
adminReportSettings.displayConcealedNames = true;

graphClient.admin().reportSettings()
	.buildRequest()
	.patch(adminReportSettings);

```