---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 extkmpdyld2GraphLearnCourses = new ();
extkmpdyld2GraphLearnCourses.setCourseType("Instructor-led");
extkmpdyld2GraphLearnCourses.setCourseId(null);
additionalData.put("extkmpdyld2_graphLearnCourses", extkmpdyld2GraphLearnCourses);
user.setAdditionalData(additionalData);
User result = graphClient.users().byUserId("{user-id}").patch(user);


```