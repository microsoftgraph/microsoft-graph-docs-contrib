---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
group.setDescription("IT Helpdesk to support Contoso employees");
group.setDisplayName("IT Helpdesk (User)");
group.setMailEnabled(false);
group.setMailNickname("userHelpdesk");
group.setSecurityEnabled(true);
group.setIsAssignableToRole(true);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> ownersOdataBind = new LinkedList<String>();
ownersOdataBind.add("https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6");
additionalData.put("owners@odata.bind", ownersOdataBind);
LinkedList<String> membersOdataBind = new LinkedList<String>();
membersOdataBind.add("https://graph.microsoft.com/v1.0/users/e2330663-f949-41b5-a3dc-faeb793e14c6");
membersOdataBind.add("https://graph.microsoft.com/v1.0/users/d9771b4c-06c5-491a-92cb-3aa4e225a725");
additionalData.put("members@odata.bind", membersOdataBind);
group.setAdditionalData(additionalData);
Group result = graphClient.groups().post(group);


```