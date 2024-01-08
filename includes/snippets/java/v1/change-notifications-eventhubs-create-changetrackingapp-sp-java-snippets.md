---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.appId = "0bf30f3b-4a52-48df-9a82-234910c4a086";

graphClient.servicePrincipals()
	.buildRequest()
	.post(servicePrincipal);

```