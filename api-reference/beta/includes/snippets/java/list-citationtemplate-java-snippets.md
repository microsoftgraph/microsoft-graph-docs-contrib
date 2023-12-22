---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CitationTemplateCollectionPage citations = graphClient.security().labels().citations()
	.buildRequest()
	.get();

```