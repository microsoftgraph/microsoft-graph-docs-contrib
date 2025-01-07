---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceTemplate deviceTemplate = new DeviceTemplate();
deviceTemplate.setMutualTlsOauthConfigurationId("00001111-aaaa-2222-bbbb-3333cccc4444");
deviceTemplate.setMutualTlsOauthConfigurationTenantId("00001111-aaaa-2222-bbbb-3333cccc4445");
deviceTemplate.setDeviceAuthority("Lakeshore Retail");
deviceTemplate.setManufacturer("Tailwind Traders");
deviceTemplate.setModel("DeepFreezerModelAB");
deviceTemplate.setOperatingSystem("WindowsIoT");
DeviceTemplate result = graphClient.directory().templates().deviceTemplates().post(deviceTemplate);


```