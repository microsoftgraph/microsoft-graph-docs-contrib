---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DeviceAndAppManagementRoleAssignment deviceAndAppManagementRoleAssignment = new DeviceAndAppManagementRoleAssignment();
deviceAndAppManagementRoleAssignment.setOdataType("#microsoft.graph.deviceAndAppManagementRoleAssignment");
deviceAndAppManagementRoleAssignment.setDisplayName("Display Name value");
deviceAndAppManagementRoleAssignment.setDescription("Description value");
LinkedList<String> resourceScopes = new LinkedList<String>();
resourceScopes.add("Resource Scopes value");
deviceAndAppManagementRoleAssignment.setResourceScopes(resourceScopes);
LinkedList<String> members = new LinkedList<String>();
members.add("Members value");
deviceAndAppManagementRoleAssignment.setMembers(members);
DeviceAndAppManagementRoleAssignment result = graphClient.deviceManagement().roleAssignments().post(deviceAndAppManagementRoleAssignment);


```