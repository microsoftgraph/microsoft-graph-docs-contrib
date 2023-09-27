---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PageTemplate pageTemplate = graphClient.sites("{site-id}").pagetemplates("{page-template-id}").microsoft.graph.pageTemplate()
	.buildRequest()
	.get();

```