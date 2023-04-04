---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Acronym acronym = graphClient.search().acronyms("{acronymsId}")
	.buildRequest()
	.get();

```