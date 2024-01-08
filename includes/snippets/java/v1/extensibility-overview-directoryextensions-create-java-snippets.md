---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExtensionProperty extensionProperty = new ExtensionProperty();
extensionProperty.name = "jobGroupTracker";
extensionProperty.dataType = "String";
LinkedList<String> targetObjectsList = new LinkedList<String>();
targetObjectsList.add("User");
extensionProperty.targetObjects = targetObjectsList;

graphClient.applications("30a5435a-1871-485c-8c7b-65f69e287e7b").extensionProperties()
	.buildRequest()
	.post(extensionProperty);

```