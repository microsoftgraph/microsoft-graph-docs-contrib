---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Notebook notebook = new Notebook();
notebook.setDisplayName("My Private notebook");
Notebook result = graphClient.me().onenote().notebooks().post(notebook);


```