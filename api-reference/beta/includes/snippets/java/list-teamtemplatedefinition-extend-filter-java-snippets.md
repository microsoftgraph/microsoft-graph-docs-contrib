---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("filter", "definitions/any(a:a/languageTag eq 'en-US')"));

TeamTemplateCollectionPage teamTemplates = graphClient.teamwork().teamTemplates()
	.buildRequest( requestOptions )
	.filter("definitions/any(a:a/languageTag eq 'en-US')")
	.expand("definitions")
	.get();

```