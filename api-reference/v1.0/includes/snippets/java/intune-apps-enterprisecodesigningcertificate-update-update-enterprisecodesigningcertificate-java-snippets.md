---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EnterpriseCodeSigningCertificate enterpriseCodeSigningCertificate = new EnterpriseCodeSigningCertificate();
enterpriseCodeSigningCertificate.setOdataType("#microsoft.graph.enterpriseCodeSigningCertificate");
byte[] content = Base64.getDecoder().decode("Y29udGVudA==");
enterpriseCodeSigningCertificate.setContent(content);
enterpriseCodeSigningCertificate.setStatus(CertificateStatus.Provisioned);
enterpriseCodeSigningCertificate.setSubjectName("Subject Name value");
enterpriseCodeSigningCertificate.setSubject("Subject value");
enterpriseCodeSigningCertificate.setIssuerName("Issuer Name value");
enterpriseCodeSigningCertificate.setIssuer("Issuer value");
OffsetDateTime expirationDateTime = OffsetDateTime.parse("2016-12-31T23:57:57.2481234-08:00");
enterpriseCodeSigningCertificate.setExpirationDateTime(expirationDateTime);
OffsetDateTime uploadDateTime = OffsetDateTime.parse("2016-12-31T23:58:46.5747426-08:00");
enterpriseCodeSigningCertificate.setUploadDateTime(uploadDateTime);
EnterpriseCodeSigningCertificate result = graphClient.deviceAppManagement().enterpriseCodeSigningCertificates().byEnterpriseCodeSigningCertificateId("{enterpriseCodeSigningCertificate-id}").patch(enterpriseCodeSigningCertificate);


```