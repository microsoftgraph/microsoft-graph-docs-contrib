---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.description = "Marketing department folks";
group.displayName = "Marketing department";
LinkedList<String> groupTypesList = new LinkedList<String>();
groupTypesList.add("Unified");
groupTypesList.add("DynamicMembership");
group.groupTypes = groupTypesList;
group.mailEnabled = true;
group.mailNickname = "marketing";
group.securityEnabled = false;
group.membershipRule = "user.department -eq \"Marketing\"";
group.membershipRuleProcessingState = "on";

graphClient.groups()
	.buildRequest()
	.post(group);

```