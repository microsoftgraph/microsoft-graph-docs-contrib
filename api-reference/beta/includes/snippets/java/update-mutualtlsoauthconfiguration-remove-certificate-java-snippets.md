---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MutualTlsOauthConfiguration mutualTlsOauthConfiguration = new MutualTlsOauthConfiguration();
LinkedList<CertificateAuthority> certificateAuthorities = new LinkedList<CertificateAuthority>();
CertificateAuthority certificateAuthority = new CertificateAuthority();
certificateAuthority.setIsRootAuthority(true);
certificateAuthority.setCertificateRevocationListUrl("http://LakeshoreRetail.com/root.crl");
certificateAuthority.setDeltaCertificateRevocationListUrl(null);
byte[] certificate = Base64.getDecoder().decode("Binary");
certificateAuthority.setCertificate(certificate);
certificateAuthority.setIssuer("Lakeshore Retail");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("issuerSubjectkeyIdentifier", "SKI");
certificateAuthority.setAdditionalData(additionalData);
certificateAuthorities.add(certificateAuthority);
mutualTlsOauthConfiguration.setCertificateAuthorities(certificateAuthorities);
MutualTlsOauthConfiguration result = graphClient.directory().certificateAuthorities().mutualTlsOauthConfigurations().byMutualTlsOauthConfigurationId("{mutualTlsOauthConfiguration-id}").patch(mutualTlsOauthConfiguration);


```