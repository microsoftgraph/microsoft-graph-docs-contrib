---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.description = "Feelgood Marketing Campaign with external partners and vendors.";
group.displayName = "Feelgood Marketing Campaign";
LinkedList<String> groupTypesList = new LinkedList<String>();
groupTypesList.add("Unified");
group.groupTypes = groupTypesList;
group.mailEnabled = true;
group.mailNickname = "FeelGoodCampaign";
group.securityEnabled = true;
group.additionalDataManager().put("owners@odata.bind", new JsonPrimitive("[  \"https://graph.microsoft.com/v1.0/users/cdb555e3-b33e-4fd5-a427-17fadacbdfa7\"]"));
group.additionalDataManager().put("members@odata.bind", new JsonPrimitive("[  \"https://graph.microsoft.com/v1.0/users/baf1b0a0-1f9a-4a56-9884-6a30824f8d20\"]"));

graphClient.groups()
	.buildRequest()
	.post(group);

```