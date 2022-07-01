---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InternalDomainFederation internalDomainFederation = graphClient.domains("contoso.com").federationConfiguration("6601d14b-d113-8f64-fda2-9b5ddda18ecc")
	.buildRequest()
	.get();

```