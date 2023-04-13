---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Qna qna = graphClient.search().qnas("{qnaId}")
	.buildRequest()
	.get();

```