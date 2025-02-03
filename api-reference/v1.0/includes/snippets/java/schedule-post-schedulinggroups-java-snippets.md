---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SchedulingGroup schedulingGroup = new SchedulingGroup();
schedulingGroup.setDisplayName("Cashiers");
schedulingGroup.setIsActive(true);
LinkedList<String> userIds = new LinkedList<String>();
userIds.add("c5d0c76b-80c4-481c-be50-923cd8d680a1");
userIds.add("2a4296b3-a28a-44ba-bc66-0274b9b95851");
schedulingGroup.setUserIds(userIds);
SchedulingGroup result = graphClient.teams().byTeamId("{team-id}").schedule().schedulingGroups().post(schedulingGroup);


```