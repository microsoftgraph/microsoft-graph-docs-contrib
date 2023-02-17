---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalGroup externalGroup = graphClient.external().connections("contosohr").groups("31bea3d537902000")
	.buildRequest()
	.get();

```