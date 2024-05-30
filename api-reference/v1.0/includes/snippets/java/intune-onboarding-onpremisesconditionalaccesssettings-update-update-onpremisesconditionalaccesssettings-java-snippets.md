---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OnPremisesConditionalAccessSettings onPremisesConditionalAccessSettings = new OnPremisesConditionalAccessSettings();
onPremisesConditionalAccessSettings.setOdataType("#microsoft.graph.onPremisesConditionalAccessSettings");
onPremisesConditionalAccessSettings.setEnabled(true);
LinkedList<UUID> includedGroups = new LinkedList<UUID>();
includedGroups.add(UUID.fromString("77c9d466-d466-77c9-66d4-c97766d4c977"));
onPremisesConditionalAccessSettings.setIncludedGroups(includedGroups);
LinkedList<UUID> excludedGroups = new LinkedList<UUID>();
excludedGroups.add(UUID.fromString("2a0afae4-fae4-2a0a-e4fa-0a2ae4fa0a2a"));
onPremisesConditionalAccessSettings.setExcludedGroups(excludedGroups);
onPremisesConditionalAccessSettings.setOverrideDefaultRule(true);
OnPremisesConditionalAccessSettings result = graphClient.deviceManagement().conditionalAccessSettings().patch(onPremisesConditionalAccessSettings);


```