---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonAnnualEvent personAnnualEvent = new PersonAnnualEvent();
personAnnualEvent.setAllowedAudiences(EnumSet.of(AllowedAudiences.Contacts));
PersonAnnualEvent result = graphClient.me().profile().anniversaries().byPersonAnnualEventId("{personAnnualEvent-id}").patch(personAnnualEvent);


```