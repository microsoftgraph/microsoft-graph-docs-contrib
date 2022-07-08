---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Identity identity = new Identity();
identity.id = "1431b9c38ee647f6a";
identity.type = IdentityType.EXTERNAL_GROUP;

graphClient.external().connections("contosohr").groups("31bea3d537902000").members()
	.buildRequest()
	.post(identity);

```