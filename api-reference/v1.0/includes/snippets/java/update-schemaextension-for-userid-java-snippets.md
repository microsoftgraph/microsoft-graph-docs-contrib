---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

User user = new User();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 ext55gb1l09MsLearnCourses = new ();
ext55gb1l09MsLearnCourses.setCourseType("Admin");
additionalData.put("ext55gb1l09_msLearnCourses", ext55gb1l09MsLearnCourses);
user.setAdditionalData(additionalData);
User result = graphClient.users().byUserId("{user-id}").patch(user);


```