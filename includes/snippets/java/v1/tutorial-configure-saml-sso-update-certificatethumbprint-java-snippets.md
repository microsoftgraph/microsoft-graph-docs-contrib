---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.preferredTokenSigningKeyThumbprint = "A7D3C4626B8A84FDA868CCC67D274D402FFD0A10";

graphClient.servicePrincipals("a750f6cf-2319-464a-bcc3-456926736a91")
	.buildRequest()
	.patch(servicePrincipal);

```