---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Qna qna = new Qna();
qna.description = "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend.";

graphClient.search().qnas("{qnaId}")
	.buildRequest()
	.patch(qna);

```