---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostCookieCollectionWithReferencesPage cookies = graphClient.security().threatIntelligence().hosts("contoso.com").cookies()
	.buildRequest()
	.get();

```