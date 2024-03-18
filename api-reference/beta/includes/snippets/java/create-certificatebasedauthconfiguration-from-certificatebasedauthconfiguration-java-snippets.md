---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CertificateBasedAuthConfiguration certificateBasedAuthConfiguration = new CertificateBasedAuthConfiguration();
LinkedList<CertificateAuthority> certificateAuthorities = new LinkedList<CertificateAuthority>();
CertificateAuthority certificateAuthority = new CertificateAuthority();
certificateAuthority.setIsRootAuthority(true);
byte[] certificate = Base64.getDecoder().decode("Binary");
certificateAuthority.setCertificate(certificate);
certificateAuthorities.add(certificateAuthority);
certificateBasedAuthConfiguration.setCertificateAuthorities(certificateAuthorities);
CertificateBasedAuthConfiguration result = graphClient.organization().byOrganizationId("{organization-id}").certificateBasedAuthConfiguration().post(certificateBasedAuthConfiguration);


```