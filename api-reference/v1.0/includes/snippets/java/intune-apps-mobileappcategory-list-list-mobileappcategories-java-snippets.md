---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileAppCategoryCollectionPage mobileAppCategories = graphClient.deviceAppManagement().mobileAppCategories()
	.buildRequest()
	.get();

```