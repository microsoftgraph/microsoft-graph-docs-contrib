---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ExtensionProperty extensionProperty = new ExtensionProperty();
extensionProperty.setName("jobGroupTracker");
extensionProperty.setDataType("String");
LinkedList<String> targetObjects = new LinkedList<String>();
targetObjects.add("User");
extensionProperty.setTargetObjects(targetObjects);
ExtensionProperty result = graphClient.applications().byApplicationId("{application-id}").extensionProperties().post(extensionProperty);


```