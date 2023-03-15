---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group directoryObject = new Group();
directoryObject.description = "Self help community for golf";
directoryObject.displayName = "Golf Assist";
LinkedList<String> groupTypesList = new LinkedList<String>();
groupTypesList.add("Unified");
directoryObject.groupTypes = groupTypesList;
directoryObject.mailEnabled = true;
directoryObject.mailNickname = "golfassist";
directoryObject.securityEnabled = false;

graphClient.administrativeUnits("{id}").members()
	.buildRequest()
	.post(directoryObject);

```