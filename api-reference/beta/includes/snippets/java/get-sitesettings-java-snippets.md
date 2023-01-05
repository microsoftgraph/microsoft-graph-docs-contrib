---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SiteSettings siteSettings = graphClient.customRequest("/sites/03164a2b-a288-486a-993e-c41454113e2a/settings", SiteSettings.class)
	.buildRequest()
	.get();

```