---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnPremisesConditionalAccessSettings onPremisesConditionalAccessSettings = new OnPremisesConditionalAccessSettings();
onPremisesConditionalAccessSettings.enabled = true;
LinkedList<UUID> includedGroupsList = new LinkedList<UUID>();
includedGroupsList.add(UUID.fromString("77c9d466-d466-77c9-66d4-c97766d4c977"));
onPremisesConditionalAccessSettings.includedGroups = includedGroupsList;
LinkedList<UUID> excludedGroupsList = new LinkedList<UUID>();
excludedGroupsList.add(UUID.fromString("2a0afae4-fae4-2a0a-e4fa-0a2ae4fa0a2a"));
onPremisesConditionalAccessSettings.excludedGroups = excludedGroupsList;
onPremisesConditionalAccessSettings.overrideDefaultRule = true;

graphClient.deviceManagement().conditionalAccessSettings()
	.buildRequest()
	.patch(onPremisesConditionalAccessSettings);

```