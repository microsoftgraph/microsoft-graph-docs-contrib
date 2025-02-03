---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RichLongRunningOperation result = graphClient.sites().bySiteId("{site-id}").operations().byRichLongRunningOperationId("{richLongRunningOperation-id}").get();


```