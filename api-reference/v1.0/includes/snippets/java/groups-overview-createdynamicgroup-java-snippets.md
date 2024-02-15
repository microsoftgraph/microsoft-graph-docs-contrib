---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
group.setDescription("Marketing department folks");
group.setDisplayName("Marketing department");
LinkedList<String> groupTypes = new LinkedList<String>();
groupTypes.add("Unified");
groupTypes.add("DynamicMembership");
group.setGroupTypes(groupTypes);
group.setMailEnabled(true);
group.setMailNickname("marketing");
group.setSecurityEnabled(false);
group.setMembershipRule("user.department -eq \"Marketing\"");
group.setMembershipRuleProcessingState("on");
Group result = graphClient.groups().post(group);


```