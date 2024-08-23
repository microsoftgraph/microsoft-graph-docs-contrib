---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.termstore.Term result = graphClient.sites().bySiteId("{site-id}").termStore().groups().byGroupId("{group-id}").sets().bySetId("{set-id}").terms().byTermId("{term-id}").get();


```