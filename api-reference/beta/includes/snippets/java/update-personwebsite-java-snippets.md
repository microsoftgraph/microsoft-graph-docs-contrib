---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonWebsite personWebsite = new PersonWebsite();
personWebsite.setDescription("Lyn Damer play in the Women's 1st Division (Toppserien) in Norway");
PersonWebsite result = graphClient.me().profile().websites().byPersonWebsiteId("{personWebsite-id}").patch(personWebsite);


```