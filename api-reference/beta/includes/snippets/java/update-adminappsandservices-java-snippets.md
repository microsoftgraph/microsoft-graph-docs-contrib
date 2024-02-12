---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AdminAppsAndServices adminAppsAndServices = new AdminAppsAndServices();
adminAppsAndServices.setOdataType("#microsoft.graph.adminAppsAndServices");
AppsAndServicesSettings settings = new AppsAndServicesSettings();
settings.setOdataType("microsoft.graph.appsAndServicesSettings");
settings.setIsOfficeStoreEnabled(false);
settings.setIsAppAndServicesTrialEnabled(false);
adminAppsAndServices.setSettings(settings);
AdminAppsAndServices result = graphClient.admin().appsAndServices().patch(adminAppsAndServices);


```