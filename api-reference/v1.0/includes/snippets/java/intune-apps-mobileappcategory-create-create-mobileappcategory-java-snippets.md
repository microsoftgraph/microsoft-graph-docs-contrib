---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileAppCategory mobileAppCategory = new MobileAppCategory();
mobileAppCategory.displayName = "Display Name value";

graphClient.deviceAppManagement().mobileAppCategories()
	.buildRequest()
	.post(mobileAppCategory);

```