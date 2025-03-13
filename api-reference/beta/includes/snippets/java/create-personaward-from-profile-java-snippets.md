---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonAward personAward = new PersonAward();
personAward.setDescription("Lifetime Achievement award from the International Association of Branding Managers");
personAward.setDisplayName("Lifetime Achievement Award For Excellence in Branding");
LocalDate issuedDate = LocalDate.parse("Date");
personAward.setIssuedDate(issuedDate);
personAward.setIssuingAuthority("International Association of Branding Management");
personAward.setThumbnailUrl("https://iabm.io/sdhdfhsdhshsd.jpg");
personAward.setWebUrl("https://www.iabm.io");
PersonAward result = graphClient.me().profile().awards().post(personAward);


```