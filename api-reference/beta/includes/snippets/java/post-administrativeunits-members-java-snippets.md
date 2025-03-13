---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Group directoryObject = new Group();
directoryObject.setOdataType("#microsoft.graph.group");
directoryObject.setDescription("Self help community for golf");
directoryObject.setDisplayName("Golf Assist");
LinkedList<String> groupTypes = new LinkedList<String>();
groupTypes.add("Unified");
directoryObject.setGroupTypes(groupTypes);
directoryObject.setMailEnabled(true);
directoryObject.setMailNickname("golfassist");
directoryObject.setSecurityEnabled(false);
DirectoryObject result = graphClient.administrativeUnits().byAdministrativeUnitId("{administrativeUnit-id}").members().post(directoryObject);


```