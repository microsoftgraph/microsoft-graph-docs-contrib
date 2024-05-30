---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonCertification personCertification = new PersonCertification();
personCertification.setIssuingAuthority("International Academy of Marketing Excellence");
personCertification.setIssuingCompany("International Academy of Marketing Excellence");
PersonCertification result = graphClient.users().byUserId("{user-id}").profile().certifications().byPersonCertificationId("{personCertification-id}").patch(personCertification);


```