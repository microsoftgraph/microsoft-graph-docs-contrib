---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

PhotoUpdateSettings photoUpdateSettings = new PhotoUpdateSettings();
photoUpdateSettings.setOdataType("#microsoft.graph.photoUpdateSettings");
LinkedList<String> allowedRoles = new LinkedList<String>();
allowedRoles.add("String");
photoUpdateSettings.setAllowedRoles(allowedRoles);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("source", "String");
photoUpdateSettings.setAdditionalData(additionalData);
PhotoUpdateSettings result = graphClient.admin().people().photoUpdateSettings().patch(photoUpdateSettings);


```