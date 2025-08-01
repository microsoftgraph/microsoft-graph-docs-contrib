---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MutualTlsOauthConfiguration mutualTlsOauthConfiguration = new MutualTlsOauthConfiguration();
mutualTlsOauthConfiguration.setDisplayName("DoorCamera_Model_X_TrustedCAs");
mutualTlsOauthConfiguration.setTlsClientAuthParameter(TlsClientRegistrationMetadata.Tls_client_auth_san_uri);
LinkedList<CertificateAuthority> certificateAuthorities = new LinkedList<CertificateAuthority>();
CertificateAuthority certificateAuthority = new CertificateAuthority();
certificateAuthority.setOdataType("microsoft.graph.certificateAuthority");
certificateAuthorities.add(certificateAuthority);
mutualTlsOauthConfiguration.setCertificateAuthorities(certificateAuthorities);
MutualTlsOauthConfiguration result = graphClient.directory().certificateAuthorities().mutualTlsOauthConfigurations().post(mutualTlsOauthConfiguration);


```