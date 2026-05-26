---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppRoleAssignment appRoleAssignment = new AppRoleAssignment();
appRoleAssignment.setOdataType("#microsoft.graph.appRoleAssignment");
OffsetDateTime deletedDateTime = OffsetDateTime.parse("String (timestamp)");
appRoleAssignment.setDeletedDateTime(deletedDateTime);
appRoleAssignment.setAppRoleId(UUID.fromString("Guid"));
appRoleAssignment.setPrincipalDisplayName("String");
appRoleAssignment.setPrincipalId(UUID.fromString("Guid"));
appRoleAssignment.setPrincipalType("String");
appRoleAssignment.setResourceDisplayName("String");
appRoleAssignment.setResourceId(UUID.fromString("Guid"));
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("creationTimestamp", "String (timestamp)");
appRoleAssignment.setAdditionalData(additionalData);
AppRoleAssignment result = graphClient.users().byUserId("{user-id}").appRoleAssignments().post(appRoleAssignment);


```