---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

EducationUser educationUser = new EducationUser();
educationUser.setDisplayName("Rogelio Cazares");
educationUser.setGivenName("Rogelio");
educationUser.setMiddleName("Fernando");
educationUser.setSurname("Cazares");
EducationUser result = graphClient.education().users().byEducationUserId("{educationUser-id}").patch(educationUser);


```