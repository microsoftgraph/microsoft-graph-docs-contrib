---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonName personName = new PersonName();
personName.setNickname("Kesha");
PersonName result = graphClient.me().profile().names().byPersonNameId("{personName-id}").patch(personName);


```