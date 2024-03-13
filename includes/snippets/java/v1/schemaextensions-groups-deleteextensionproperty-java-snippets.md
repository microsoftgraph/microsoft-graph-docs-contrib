---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("bellowscollege_courses", null);
group.setAdditionalData(additionalData);
Group result = graphClient.groups().byGroupId("{group-id}").patch(group);


```