---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipalCollectionPage servicePrincipal = graphClient.groups("3802e9bb-0951-4e18-b9eb-f934b4241194").members().microsoft.graph.servicePrincipal()
	.buildRequest()
	.get();

```