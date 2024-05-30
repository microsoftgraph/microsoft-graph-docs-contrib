---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.setAppId("0bf30f3b-4a52-48df-9a82-234910c4a086");
ServicePrincipal result = graphClient.servicePrincipals().post(servicePrincipal);


```