---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

OpenTypeExtension extension = new OpenTypeExtension();
extension.setOdataType("microsoft.graph.openTypeExtension");
extension.setExtensionName("com.contoso.roamingSettings");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("theme", "dark");
additionalData.put("color", "purple");
additionalData.put("lang", "Japanese");
extension.setAdditionalData(additionalData);
Extension result = graphClient.me().extensions().post(extension);


```