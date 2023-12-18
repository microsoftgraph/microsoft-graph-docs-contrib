---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "CN=AWSContoso";

OffsetDateTime endDateTime = OffsetDateTimeSerializer.deserialize("01/25/2024 00:00:00");

graphClient.servicePrincipals("a750f6cf-2319-464a-bcc3-456926736a91")
	.addTokenSigningCertificate(ServicePrincipalAddTokenSigningCertificateParameterSet
		.newBuilder()
		.withDisplayName(displayName)
		.withEndDateTime(endDateTime)
		.build())
	.buildRequest()
	.post();

```