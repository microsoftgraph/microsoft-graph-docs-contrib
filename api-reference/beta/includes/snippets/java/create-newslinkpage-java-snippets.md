---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

NewsLinkPage baseSitePage = new NewsLinkPage();
baseSitePage.setOdataType("#microsoft.graph.newsLinkPage");
baseSitePage.setNewsWebUrl("https://someexternalnewssite.com/2024/11/11/contoso-unveils-first-self-driving-car");
baseSitePage.setTitle("Contoso Unveils First Self-Driving Car");
BaseSitePage result = graphClient.sites().bySiteId("{site-id}").pages().post(baseSitePage, requestConfiguration -> {
	requestConfiguration.headers.add("prefer", "include-unknown-enum-members");
});


```