---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SubdomainCollectionWithReferencesPage subdomains = graphClient.security().threatIntelligence().hosts("contoso.com").subdomains()
	.buildRequest()
	.get();

```