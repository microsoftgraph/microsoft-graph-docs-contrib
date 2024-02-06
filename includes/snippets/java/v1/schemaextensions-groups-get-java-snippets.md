---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SchemaExtensionCollectionPage schemaExtensions = graphClient.schemaExtensions()
	.buildRequest()
	.filter("id eq 'bellowscollege_courses'")
	.get();

```