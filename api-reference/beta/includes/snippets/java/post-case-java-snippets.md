---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.CaseEscaped caseEscaped = new com.microsoft.graph.beta.models.ediscovery.CaseEscaped();
caseEscaped.setDisplayName("My Case 1");
com.microsoft.graph.models.ediscovery.Case result = graphClient.compliance().ediscovery().cases().post(caseEscaped);


```