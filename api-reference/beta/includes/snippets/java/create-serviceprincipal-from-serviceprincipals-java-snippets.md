---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.setAppId("65415bb1-9267-4313-bbf5-ae259732ee12");
ServicePrincipal result = graphClient.servicePrincipals().post(servicePrincipal);


```