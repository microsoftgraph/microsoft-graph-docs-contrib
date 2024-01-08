---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExternalItem externalItem = graphClient.external().connections("contosohr").items("TSP228082938")
	.buildRequest()
	.get();

```