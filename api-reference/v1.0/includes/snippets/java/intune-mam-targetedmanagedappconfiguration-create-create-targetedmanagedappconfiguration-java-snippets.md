---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TargetedManagedAppConfiguration targetedManagedAppConfiguration = new TargetedManagedAppConfiguration();
targetedManagedAppConfiguration.setOdataType("#microsoft.graph.targetedManagedAppConfiguration");
targetedManagedAppConfiguration.setDisplayName("Display Name value");
targetedManagedAppConfiguration.setDescription("Description value");
targetedManagedAppConfiguration.setVersion("Version value");
LinkedList<KeyValuePair> customSettings = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setOdataType("microsoft.graph.keyValuePair");
keyValuePair.setName("Name value");
keyValuePair.setValue("Value value");
customSettings.add(keyValuePair);
targetedManagedAppConfiguration.setCustomSettings(customSettings);
targetedManagedAppConfiguration.setDeployedAppCount(0);
targetedManagedAppConfiguration.setIsAssigned(true);
TargetedManagedAppConfiguration result = graphClient.deviceAppManagement().targetedManagedAppConfigurations().post(targetedManagedAppConfiguration);


```