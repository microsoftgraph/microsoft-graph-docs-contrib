---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InternalDomainFederationCollectionPage federationConfiguration = graphClient.domains("{domainsId}").federationConfiguration()
	.buildRequest()
	.get();

```