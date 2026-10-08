---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CertificateBasedApplicationConfiguration certificateBasedApplicationConfiguration = new CertificateBasedApplicationConfiguration();
certificateBasedApplicationConfiguration.setDisplayName("Tenant Trusted Certificate Chain of Trust for Application Configuration");
certificateBasedApplicationConfiguration.setDescription("The Trusted Certificate Chain of Trust containing a certificate chain used by the Tenant app policy, to only allow application certificates from this issuer.");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<Object> trustedCertificateAuthorities = new LinkedList<Object>();
 property = new ();
property.setIsRootAuthority(true);
property.setCertificate("MIIHMDCCBRigAwIBAgITWgAAmdzMYKZPslw+twABAACZ");
trustedCertificateAuthorities.add(property);
additionalData.put("trustedCertificateAuthorities ", trustedCertificateAuthorities);
certificateBasedApplicationConfiguration.setAdditionalData(additionalData);
CertificateBasedApplicationConfiguration result = graphClient.directory().certificateAuthorities().certificateBasedApplicationConfigurations().post(certificateBasedApplicationConfiguration);


```