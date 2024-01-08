---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

DeviceAndAppManagementRoleAssignment deviceAndAppManagementRoleAssignment = new DeviceAndAppManagementRoleAssignment();
deviceAndAppManagementRoleAssignment.displayName = "Display Name value";
deviceAndAppManagementRoleAssignment.description = "Description value";
LinkedList<String> resourceScopesList = new LinkedList<String>();
resourceScopesList.add("Resource Scopes value");
deviceAndAppManagementRoleAssignment.resourceScopes = resourceScopesList;
LinkedList<String> membersList = new LinkedList<String>();
membersList.add("Members value");
deviceAndAppManagementRoleAssignment.members = membersList;

graphClient.deviceManagement().roleAssignments("{deviceAndAppManagementRoleAssignmentId}")
	.buildRequest()
	.patch(deviceAndAppManagementRoleAssignment);

```