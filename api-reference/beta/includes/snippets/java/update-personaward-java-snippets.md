---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonAward personAward = new PersonAward();
personAward.setIssuingAuthority("International Association of Branding Management");
personAward.setThumbnailUrl("https://iabm.io/sdhdfhsdhshsd.jpg");
PersonAward result = graphClient.users().byUserId("{user-id}").profile().awards().byPersonAwardId("{personAward-id}").patch(personAward);


```