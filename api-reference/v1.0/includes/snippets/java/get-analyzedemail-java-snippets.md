---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.AnalyzedEmail result = graphClient.security().collaboration().analyzedEmails().byAnalyzedEmailId("{analyzedEmail-id}").get();


```