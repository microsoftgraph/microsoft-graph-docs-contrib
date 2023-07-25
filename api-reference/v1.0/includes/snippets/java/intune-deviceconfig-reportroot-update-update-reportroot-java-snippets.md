---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ReportRoot reportRoot = new ReportRoot();

graphClient.reports()
	.buildRequest()
	.patch(reportRoot);

```