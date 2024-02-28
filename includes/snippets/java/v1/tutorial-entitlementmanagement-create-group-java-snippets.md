---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
group.setDescription("Marketing group");
group.setDisplayName("Marketing resources");
group.setMailEnabled(false);
group.setMailNickname("markres");
group.setSecurityEnabled(true);
Group result = graphClient.groups().post(group);


```