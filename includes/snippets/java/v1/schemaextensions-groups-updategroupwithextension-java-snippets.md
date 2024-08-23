---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 bellowscollegeCourses = new ();
bellowscollegeCourses.setCourseId("123");
bellowscollegeCourses.setCourseName("New Managers");
bellowscollegeCourses.setCourseType("Online");
additionalData.put("bellowscollege_courses", bellowscollegeCourses);
group.setAdditionalData(additionalData);
Group result = graphClient.groups().byGroupId("{group-id}").patch(group);


```