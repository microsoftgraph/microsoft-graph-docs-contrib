---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonWebsite personWebsite = new PersonWebsite();
LinkedList<String> categories = new LinkedList<String>();
categories.add("football");
personWebsite.setCategories(categories);
personWebsite.setDisplayName("Lyn Damer");
personWebsite.setWebUrl("www.lyndamer.no");
PersonWebsite result = graphClient.me().profile().websites().post(personWebsite);


```