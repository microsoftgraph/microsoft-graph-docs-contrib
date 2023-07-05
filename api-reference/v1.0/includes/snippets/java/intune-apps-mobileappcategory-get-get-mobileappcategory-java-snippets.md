---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MobileAppCategory mobileAppCategory = graphClient.deviceAppManagement().mobileAppCategories("{mobileAppCategoryId}")
	.buildRequest()
	.get();

```