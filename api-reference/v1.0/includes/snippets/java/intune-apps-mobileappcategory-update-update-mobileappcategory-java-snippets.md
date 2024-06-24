---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MobileAppCategory mobileAppCategory = new MobileAppCategory();
mobileAppCategory.setOdataType("#microsoft.graph.mobileAppCategory");
mobileAppCategory.setDisplayName("Display Name value");
MobileAppCategory result = graphClient.deviceAppManagement().mobileAppCategories().byMobileAppCategoryId("{mobileAppCategory-id}").patch(mobileAppCategory);


```