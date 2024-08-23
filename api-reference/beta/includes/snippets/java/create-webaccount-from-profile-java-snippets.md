---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WebAccount webAccount = new WebAccount();
webAccount.setDescription("My Github contributions!");
webAccount.setUserId("innocenty.popov");
ServiceInformation service = new ServiceInformation();
service.setName("GitHub");
service.setWebUrl("https://github.com");
webAccount.setService(service);
WebAccount result = graphClient.me().profile().webAccounts().post(webAccount);


```