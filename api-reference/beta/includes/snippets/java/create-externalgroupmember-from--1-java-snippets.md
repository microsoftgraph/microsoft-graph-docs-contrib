---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Identity identity = new Identity();
identity.id = "e811976d-83df-4cbd-8b9b-5215b18aa874";
identity.type = IdentityType.USER;

graphClient.external().connections("contosohr").groups("31bea3d537902000").members()
	.buildRequest()
	.post(identity);

```