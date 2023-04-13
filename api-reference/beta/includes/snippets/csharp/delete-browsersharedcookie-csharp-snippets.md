---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Admin.Edge.InternetExplorerMode.SiteLists["{browserSiteList-id}"].SharedCookies["{browserSharedCookie-id}"]
	.Request()
	.DeleteAsync();

```