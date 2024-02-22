---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
group.setDescription("Building security");
group.setDisplayName("Building security");
LinkedList<String> groupTypes = new LinkedList<String>();
group.setGroupTypes(groupTypes);
group.setMailEnabled(false);
group.setMailNickname("buildingsecurity");
group.setSecurityEnabled(true);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> ownersOdataBind = new LinkedList<String>();
ownersOdataBind.add("https://graph.microsoft.com/beta/users/d3bcdff4-4f80-4418-a65e-7bf3778c5dca");
additionalData.put("owners@odata.bind", ownersOdataBind);
LinkedList<String> membersOdataBind = new LinkedList<String>();
membersOdataBind.add("https://graph.microsoft.com/beta/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6");
membersOdataBind.add("https://graph.microsoft.com/beta/users/bf59c5ba-5304-4c9b-9192-e5a4cb8444e7");
additionalData.put("members@odata.bind", membersOdataBind);
group.setAdditionalData(additionalData);
Group result = graphClient.groups().post(group);


```