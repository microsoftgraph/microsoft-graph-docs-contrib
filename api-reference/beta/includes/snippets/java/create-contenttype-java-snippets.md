---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ContentType contentType = new ContentType();
contentType.setName("docSet");
contentType.setDescription("custom docset");
ContentType base = new ContentType();
base.setName("Document Set");
base.setId("0x0120D520");
contentType.setBase(base);
contentType.setGroup("Document Set Content Types");
ContentType result = graphClient.sites().bySiteId("{site-id}").contentTypes().post(contentType);


```