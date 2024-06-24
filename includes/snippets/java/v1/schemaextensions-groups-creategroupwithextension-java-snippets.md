---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
group.setDisplayName("New Managers March 2024");
group.setDescription("New Managers training course for March 2024");
LinkedList<String> groupTypes = new LinkedList<String>();
groupTypes.add("Unified");
group.setGroupTypes(groupTypes);
group.setMailEnabled(true);
group.setMailNickname("newMan202403");
group.setSecurityEnabled(false);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 bellowscollegeCourses = new ();
bellowscollegeCourses.setCourseId("123");
bellowscollegeCourses.setCourseName("New Managers");
bellowscollegeCourses.setCourseType("Online");
additionalData.put("bellowscollege_courses", bellowscollegeCourses);
group.setAdditionalData(additionalData);
Group result = graphClient.groups().post(group);


```