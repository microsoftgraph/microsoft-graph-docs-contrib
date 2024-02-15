---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemEmail itemEmail = new ItemEmail();
itemEmail.setAddress("Innocenty.Popov@adventureworks.com");
ItemEmail result = graphClient.me().profile().emails().post(itemEmail);


```