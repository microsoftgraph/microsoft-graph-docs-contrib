---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group group = new Group();
group.setDescription("Feelgood Marketing Campaign with external partners and vendors.");
group.setDisplayName("Feelgood Marketing Campaign");
LinkedList<String> groupTypes = new LinkedList<String>();
groupTypes.add("Unified");
group.setGroupTypes(groupTypes);
group.setMailEnabled(true);
group.setMailNickname("FeelGoodCampaign");
group.setSecurityEnabled(true);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
LinkedList<String> ownersOdataBind = new LinkedList<String>();
ownersOdataBind.add("https://graph.microsoft.com/v1.0/users/cdb555e3-b33e-4fd5-a427-17fadacbdfa7");
additionalData.put("owners@odata.bind", ownersOdataBind);
LinkedList<String> membersOdataBind = new LinkedList<String>();
membersOdataBind.add("https://graph.microsoft.com/v1.0/users/baf1b0a0-1f9a-4a56-9884-6a30824f8d20");
additionalData.put("members@odata.bind", membersOdataBind);
group.setAdditionalData(additionalData);
Group result = graphClient.groups().post(group);


```