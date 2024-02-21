---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PersonAnnotation personAnnotation = new PersonAnnotation();
ItemBody detail = new ItemBody();
detail.setContentType(BodyType.Text);
detail.setContent("I am originally from Australia, but grew up in Moscow, Russia.");
personAnnotation.setDetail(detail);
personAnnotation.setDisplayName("About Me");
PersonAnnotation result = graphClient.me().profile().notes().post(personAnnotation);


```