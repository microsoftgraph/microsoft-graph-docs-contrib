---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
group.setDescription("Group with designated owner and members");
group.setDisplayName("Operations group");
LinkedList<String> groupTypes = new LinkedList<String>();
group.setGroupTypes(groupTypes);
group.setMailEnabled(false);
group.setMailNickname("operations2019");
group.setSecurityEnabled(true);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> ownersOdataBind = new LinkedList<String>();
ownersOdataBind.add("https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2");
additionalData.put("owners@odata.bind", ownersOdataBind);
LinkedList<String> membersOdataBind = new LinkedList<String>();
membersOdataBind.add("https://graph.microsoft.com/beta/users/ff7cb387-6688-423c-8188-3da9532a73cc");
membersOdataBind.add("https://graph.microsoft.com/beta/users/69456242-0067-49d3-ba96-9de6f2728e14");
additionalData.put("members@odata.bind", membersOdataBind);
group.setAdditionalData(additionalData);
Group result = graphClient.groupsWithUniqueName("{uniqueName}").patch(group);


```