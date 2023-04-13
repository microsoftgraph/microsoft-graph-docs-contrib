---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String revision = "1.0";

graphClient.admin().edge().internetExplorerMode().siteLists("36ba61eb-c492-4283-a38b-963a1dbb2f69")
	.publish(BrowserSiteListPublishParameterSet
		.newBuilder()
		.withRevision(revision)
		.withSites(null)
		.withSharedCookies(null)
		.build())
	.buildRequest()
	.post();

```