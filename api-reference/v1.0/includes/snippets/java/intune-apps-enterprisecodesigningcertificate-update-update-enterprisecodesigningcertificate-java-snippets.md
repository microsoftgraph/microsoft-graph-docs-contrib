---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EnterpriseCodeSigningCertificate enterpriseCodeSigningCertificate = new EnterpriseCodeSigningCertificate();
enterpriseCodeSigningCertificate.content = Base64.getDecoder().decode("Y29udGVudA==");
enterpriseCodeSigningCertificate.status = CertificateStatus.PROVISIONED;
enterpriseCodeSigningCertificate.subjectName = "Subject Name value";
enterpriseCodeSigningCertificate.subject = "Subject value";
enterpriseCodeSigningCertificate.issuerName = "Issuer Name value";
enterpriseCodeSigningCertificate.issuer = "Issuer value";
enterpriseCodeSigningCertificate.expirationDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:57:57.2481234+00:00");
enterpriseCodeSigningCertificate.uploadDateTime = OffsetDateTimeSerializer.deserialize("2017-01-01T07:58:46.5747426+00:00");

graphClient.deviceAppManagement().enterpriseCodeSigningCertificates("{enterpriseCodeSigningCertificateId}")
	.buildRequest()
	.patch(enterpriseCodeSigningCertificate);

```