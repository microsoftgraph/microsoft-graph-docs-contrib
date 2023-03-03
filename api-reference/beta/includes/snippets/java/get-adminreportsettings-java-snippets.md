---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdminReportSettings adminReportSettings = graphClient.admin().reportSettings()
	.buildRequest()
	.get();

```