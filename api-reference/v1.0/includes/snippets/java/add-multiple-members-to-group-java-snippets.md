---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> membersOdataBind = new LinkedList<String>();
membersOdataBind.add("https://graph.microsoft.com/v1.0/directoryObjects/{id}");
membersOdataBind.add("https://graph.microsoft.com/v1.0/directoryObjects/{id}");
membersOdataBind.add("https://graph.microsoft.com/v1.0/directoryObjects/{id}");
additionalData.put("members@odata.bind", membersOdataBind);
group.setAdditionalData(additionalData);
Group result = graphClient.groups().byGroupId("{group-id}").patch(group);


```