---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ExtensionProperty extensionProperty = new ExtensionProperty();
extensionProperty.name = "jobGroup";
extensionProperty.dataType = "String";
extensionProperty.isMultiValued = true;
LinkedList<String> targetObjectsList = new LinkedList<String>();
targetObjectsList.add("User");
extensionProperty.targetObjects = targetObjectsList;

graphClient.applications("fd918e4b-c821-4efb-b50a-5eddd23afc6f").extensionProperties()
	.buildRequest()
	.post(extensionProperty);

```