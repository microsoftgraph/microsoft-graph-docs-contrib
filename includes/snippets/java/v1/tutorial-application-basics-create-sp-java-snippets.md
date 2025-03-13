---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.setAppId("fc876dd1-6bcb-4304-b9b6-18ddf1526b62");
ServicePrincipal result = graphClient.servicePrincipals().post(servicePrincipal);


```