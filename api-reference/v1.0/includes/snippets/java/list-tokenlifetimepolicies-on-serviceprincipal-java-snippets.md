---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TokenLifetimePolicyCollectionWithReferencesPage tokenLifetimePolicies = graphClient.servicePrincipals("2a8f9e7a-af01-413a-9592-c32ec0e5c1a7").tokenLifetimePolicies()
	.buildRequest()
	.get();

```