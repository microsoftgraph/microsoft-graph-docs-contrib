---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipal servicePrincipal = new ServicePrincipal();
servicePrincipal.setPreferredTokenSigningKeyThumbprint("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A");
ServicePrincipal result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").patch(servicePrincipal);


```