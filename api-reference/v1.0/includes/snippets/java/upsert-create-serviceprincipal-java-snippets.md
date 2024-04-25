---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.setDisplayName("My app instance");
ServicePrincipal result = graphClient.servicePrincipalsWithAppId("{appId}").patch(servicePrincipal, requestConfiguration -> {
	requestConfiguration.headers.add("Prefer", "create-if-missing");
});


```