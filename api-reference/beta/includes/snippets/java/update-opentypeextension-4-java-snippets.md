---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Extension extension = new Extension();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("extensionName", "newExtensionName");
additionalData.put("myCustomString", "Contoso data");
additionalData.put("myCustomBool", false);
extension.setAdditionalData(additionalData);
Extension result = graphClient.sites().bySiteId("{site-id}").extensions().byExtensionId("{extension-id}").patch(extension);


```