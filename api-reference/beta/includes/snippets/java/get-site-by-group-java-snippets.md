---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Site result = graphClient.groups().byGroupId("{group-id}").sites().bySiteId("{site-id}").get();


```