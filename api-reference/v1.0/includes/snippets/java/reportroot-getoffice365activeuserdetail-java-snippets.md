---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.reports()
	.getOffice365ActiveUserDetail(ReportRootGetOffice365ActiveUserDetailParameterSet
		.newBuilder()
		.withPeriod("D7")
		.build())
	.buildRequest()
	.get();

```