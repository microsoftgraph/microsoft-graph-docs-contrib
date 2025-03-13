---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WebAccount webAccount = new WebAccount();
webAccount.setWebUrl("https://github.com/innocenty.popov");
WebAccount result = graphClient.me().profile().webAccounts().byWebAccountId("{webAccount-id}").patch(webAccount);


```