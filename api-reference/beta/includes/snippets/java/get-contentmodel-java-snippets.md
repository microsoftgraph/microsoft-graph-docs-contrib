---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ContentModel result = graphClient.sites().bySiteId("{site-id}").contentModels().byContentModelId("{contentModel-id}").get();


```