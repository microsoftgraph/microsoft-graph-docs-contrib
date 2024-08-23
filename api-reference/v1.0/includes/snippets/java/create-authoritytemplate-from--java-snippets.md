---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.AuthorityTemplate authorityTemplate = new com.microsoft.graph.models.security.AuthorityTemplate();
authorityTemplate.setOdataType("#microsoft.graph.security.authorityTemplate");
authorityTemplate.setDisplayName("Business");
com.microsoft.graph.models.security.AuthorityTemplate result = graphClient.security().labels().authorities().post(authorityTemplate);


```