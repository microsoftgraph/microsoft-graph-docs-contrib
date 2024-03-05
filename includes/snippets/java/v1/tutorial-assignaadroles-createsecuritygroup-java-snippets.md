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
ownersOdataBind.add("https://graph.microsoft.com/v1.0/users/1ed8ac56-4827-4733-8f80-86adc2e67db5");
additionalData.put("owners@odata.bind", ownersOdataBind);
LinkedList<String> membersOdataBind = new LinkedList<String>();
membersOdataBind.add("https://graph.microsoft.com/v1.0/users/1ed8ac56-4827-4733-8f80-86adc2e67db5");
membersOdataBind.add("https://graph.microsoft.com/v1.0/users/7146daa8-1b4b-4a66-b2f7-cf593d03c8d2");
additionalData.put("members@odata.bind", membersOdataBind);
group.setAdditionalData(additionalData);
Group result = graphClient.groups().post(group);


```