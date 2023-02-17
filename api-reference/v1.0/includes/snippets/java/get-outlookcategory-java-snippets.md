---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookCategory outlookCategory = graphClient.me().outlook().masterCategories("feafe4e8-52ff-488a-817f-cfea7e43ff8b")
	.buildRequest()
	.get();

```