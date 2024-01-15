---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdminAppsAndServices adminAppsAndServices = new AdminAppsAndServices();
AppsAndServicesSettings settings = new AppsAndServicesSettings();
settings.isOfficeStoreEnabled = false;
settings.isAppAndServicesTrialEnabled = false;
adminAppsAndServices.settings = settings;

graphClient.admin().appsAndServices()
	.buildRequest()
	.patch(adminAppsAndServices);

```