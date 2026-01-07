---
title: "deviceAndAppManagementAssignedRoleDetail resource type"
description: "The DeviceAndAppManagementAssignedRoleDetail is a complex type in Microsoft Intune used to represent the Role Definitions and Permissions that are assigned to a specific user. This type provides a detailed view of the roles a user holds, along with the associated permissions that determine the specific actions the user can perform within Intune environment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementAssignedRoleDetail resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The DeviceAndAppManagementAssignedRoleDetail is a complex type in Microsoft Intune used to represent the Role Definitions and Permissions that are assigned to a specific user. This type provides a detailed view of the roles a user holds, along with the associated permissions that determine the specific actions the user can perform within Intune environment.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|roleDefinitions|[deviceAndAppManagementAssignedRoleDefinition](../resources/intune-rbac-deviceandappmanagementassignedroledefinition.md) collection|A collection of RoleDefinitions represents the various administrative roles that define permissions and access levels within Microsoft Intune. Each RoleDefinition outlines a set of permissions that determine the actions an admin or user can perform in the Intune environment. These permissions can include actions like reading or writing to specific resources, managing device configurations, deploying policies, or handling user data. RoleDefinitions are critical for enforcing role-based access control (RBAC), ensuring that administrators can only interact with the features and data relevant to their responsibilities. RoleDefinitions in Intune can either be built-in roles provided by Microsoft or custom roles created by an organization to tailor access based on specific needs. These definitions are referenced when assigning roles to users or groups, effectively controlling the scope of their administrative privileges. The collection of RoleDefinitions is managed through the Intune console or the Graph API, allowing for scalable role management across large environments. This property is read-only.|
|permissions|String collection|The list of permissions assigned to a specific user based on their associated role definitions. Each permission defines the specific actions the user can perform on Intune resources, such as managing devices, applications, or configurations. Some possible values are: Microsoft.Intune/MobileApps/Read, Microsoft.Intune/DeviceConfigurations/Write, Microsoft.Intune/ManagedDevices/Retire, and Microsoft.Intune/DeviceCompliancePolicies/Assign. This Permissions property provides a comprehensive view of the user's effective access rights, ensuring that they can only perform actions relevant to their assigned roles. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementAssignedRoleDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignedRoleDetail",
  "roleDefinitions": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementAssignedRoleDefinition",
      "roleDefinitionDisplayName": "String",
      "permissions": [
        "String"
      ]
    }
  ],
  "permissions": [
    "String"
  ]
}
```