---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.appId = "fc876dd1-6bcb-4304-b9b6-18ddf1526b62";

graphClient.servicePrincipals()
	.buildRequest()
	.post(servicePrincipal);

```