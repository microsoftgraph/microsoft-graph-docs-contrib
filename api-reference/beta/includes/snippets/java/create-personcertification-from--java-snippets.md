---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonCertification personCertification = new PersonCertification();
personCertification.setCertificationId("KB-1235466333663322");
personCertification.setDescription("Blackbelt in Marketing - Brand Management");
personCertification.setDisplayName("Marketing Blackbelt - Brand Management");
personCertification.setThumbnailUrl("https://iame.io/dfhdfdfd334.jpg");
personCertification.setWebUrl("https://www.iame.io/blackbelt");
PersonCertification result = graphClient.me().profile().certifications().post(personCertification);


```