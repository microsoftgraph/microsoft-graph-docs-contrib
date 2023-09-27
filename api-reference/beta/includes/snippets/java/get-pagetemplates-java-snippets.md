---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PageTemplateCollectionPage pageTemplate = graphClient.sites("{site-id}").pagetemplates().microsoft.graph.pageTemplate()
	.buildRequest()
	.get();

```