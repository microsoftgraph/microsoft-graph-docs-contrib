---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.search.Qna qna = new com.microsoft.graph.beta.models.search.Qna();
qna.setDescription("The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a weekend.");
com.microsoft.graph.models.search.Qna result = graphClient.search().qnas().byQnaId("{qna-id}").patch(qna);


```