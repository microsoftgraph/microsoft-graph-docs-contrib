---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OutlookCategory outlookCategory = new OutlookCategory();
outlookCategory.setDisplayName("Project expenses");
outlookCategory.setColor(CategoryColor.Preset9);
OutlookCategory result = graphClient.me().outlook().masterCategories().post(outlookCategory);


```