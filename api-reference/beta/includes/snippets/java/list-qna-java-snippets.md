---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

QnaCollectionPage qnas = graphClient.search().qnas()
	.buildRequest()
	.get();

```