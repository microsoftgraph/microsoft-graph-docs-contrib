---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
group.setDescription("Library Assist");
group.setDisplayName("Library Assist");
LinkedList<String> groupTypes = new LinkedList<String>();
groupTypes.add("Unified");
group.setGroupTypes(groupTypes);
group.setMailEnabled(true);
group.setMailNickname("library-help");
Group result = graphClient.groups().byGroupId("{group-id}").patch(group);


```