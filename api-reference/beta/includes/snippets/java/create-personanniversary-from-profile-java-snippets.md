---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonAnnualEvent personAnnualEvent = new PersonAnnualEvent();
personAnnualEvent.setType(PersonAnnualEventType.Birthday);
LocalDate date = LocalDate.parse("1980-01-08");
personAnnualEvent.setDate(date);
PersonAnnualEvent result = graphClient.me().profile().anniversaries().post(personAnnualEvent);


```