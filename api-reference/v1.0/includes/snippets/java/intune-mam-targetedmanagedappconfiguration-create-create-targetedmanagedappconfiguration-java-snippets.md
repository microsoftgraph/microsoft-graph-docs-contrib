---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TargetedManagedAppConfiguration targetedManagedAppConfiguration = new TargetedManagedAppConfiguration();
targetedManagedAppConfiguration.displayName = "Display Name value";
targetedManagedAppConfiguration.description = "Description value";
targetedManagedAppConfiguration.version = "Version value";
LinkedList<KeyValuePair> customSettingsList = new LinkedList<KeyValuePair>();
KeyValuePair customSettings = new KeyValuePair();
customSettings.name = "Name value";
customSettings.value = "Value value";
customSettingsList.add(customSettings);
targetedManagedAppConfiguration.customSettings = customSettingsList;
targetedManagedAppConfiguration.deployedAppCount = 0;
targetedManagedAppConfiguration.isAssigned = true;

graphClient.deviceAppManagement().targetedManagedAppConfigurations()
	.buildRequest()
	.post(targetedManagedAppConfiguration);

```