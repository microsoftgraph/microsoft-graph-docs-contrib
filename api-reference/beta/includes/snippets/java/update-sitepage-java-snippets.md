---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SitePage sitePage = new SitePage();
sitePage.title = "sample";
sitePage.showComments = true;
sitePage.showRecommendedPages = false;

graphClient.sites("{sitesId}").pages("{sitePageId}")
	.buildRequest()
	.patch(sitePage);

```