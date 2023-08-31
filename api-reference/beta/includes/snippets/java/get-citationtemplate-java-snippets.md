---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CitationTemplate citationTemplate = graphClient.security().labels().citations("{citationTemplateId}")
	.buildRequest()
	.get();

```