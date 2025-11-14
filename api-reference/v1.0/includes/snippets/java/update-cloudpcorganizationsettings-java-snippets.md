---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CloudPcOrganizationSettings cloudPcOrganizationSettings = new CloudPcOrganizationSettings();
cloudPcOrganizationSettings.setOdataType("#microsoft.graph.cloudPcOrganizationSettings");
cloudPcOrganizationSettings.setEnableMEMAutoEnroll(true);
cloudPcOrganizationSettings.setOsVersion(CloudPcOperatingSystem.Windows11);
cloudPcOrganizationSettings.setUserAccountType(CloudPcUserAccountType.StandardUser);
CloudPcWindowsSettings windowsSettings = new CloudPcWindowsSettings();
windowsSettings.setLanguage("en-US");
cloudPcOrganizationSettings.setWindowsSettings(windowsSettings);
CloudPcOrganizationSettings result = graphClient.deviceManagement().virtualEndpoint().organizationSettings().patch(cloudPcOrganizationSettings);


```