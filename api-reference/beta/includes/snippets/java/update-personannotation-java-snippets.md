---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonAnnotation personAnnotation = new PersonAnnotation();
personAnnotation.setAllowedAudiences(EnumSet.of(AllowedAudiences.Organization));
PersonAnnotation result = graphClient.users().byUserId("{user-id}").profile().notes().byPersonAnnotationId("{personAnnotation-id}").patch(personAnnotation);


```