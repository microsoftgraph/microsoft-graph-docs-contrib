---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Extension extension = new Extension();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("theme", "light");
additionalData.put("color", "yellow");
additionalData.put("lang", "Swahili");
extension.setAdditionalData(additionalData);
Extension result = graphClient.me().extensions().byExtensionId("{extension-id}").patch(extension);


```