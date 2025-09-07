---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CertificateBasedAuthPki certificateBasedAuthPki = new CertificateBasedAuthPki();
certificateBasedAuthPki.setDisplayName("Contoso PKI");
CertificateBasedAuthPki result = graphClient.directory().publicKeyInfrastructure().certificateBasedAuthConfigurations().post(certificateBasedAuthPki);


```