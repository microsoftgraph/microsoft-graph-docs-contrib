---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ItemPhone itemPhone = new ItemPhone();
itemPhone.setDisplayName("Car Phone");
itemPhone.setNumber("+7 499 342 22 13");
ItemPhone result = graphClient.me().profile().phones().post(itemPhone);


```