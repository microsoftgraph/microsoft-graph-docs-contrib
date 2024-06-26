---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonName personName = new PersonName();
personName.setDisplayName("Innocenty Popov");
personName.setFirst("Innocenty");
personName.setInitials("IP");
personName.setLast("Popov");
personName.setLanguageTag("en-US");
personName.setMaiden(null);
PersonName result = graphClient.me().profile().names().post(personName);


```