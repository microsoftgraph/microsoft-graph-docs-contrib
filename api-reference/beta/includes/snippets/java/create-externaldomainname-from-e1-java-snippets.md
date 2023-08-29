---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalDomainName externalDomainName = new ExternalDomainName();
externalDomainName.id = "contososuites.com";

graphClient.directory().federationConfigurations("d5a56845-6845-d5a5-4568-a5d54568a5d5").microsoft.graph.samlOrWsFedExternalDomainFederation().domains()
	.buildRequest()
	.post(externalDomainName);

```