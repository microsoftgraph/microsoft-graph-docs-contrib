---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.setPreferredTokenSigningKeyThumbprint("A7D3C4626B8A84FDA868CCC67D274D402FFD0A10");
ServicePrincipal result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").patch(servicePrincipal);


```