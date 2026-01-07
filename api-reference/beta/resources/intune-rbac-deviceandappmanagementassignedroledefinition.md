---
title: "deviceAndAppManagementAssignedRoleDefinition resource type"
description: "Complex type to represent the role that is assigned to the user. This type contains the ID, the display name, and the permissions of the role."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementAssignedRoleDefinition resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Complex type to represent the role that is assigned to the user. This type contains the ID, the display name, and the permissions of the role.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|roleDefinitionDisplayName|String|The RoleDefinitionDisplayName property represents the human-readable name of a specific role definition in Microsoft Intune. This property provides a clear and descriptive name that indicates the purpose or scope of the role, helping administrators identify and assign appropriate roles to users or groups.Some example values for RoleDefinitionDisplayName might include: "Helpdesk Operator," "Application Manager," or "Policy Administrator." This display name is primarily used in the Intune console or Graph API to present roles in a user-friendly manner, making it easier for administrators to manage role-based access control (RBAC) efficiently. This property is read-only.|
|permissions|String collection|A list of permissions based on its associated role. Each permission defines the specific actions the user can perform on Intune resources, such as managing devices, applications, or configurations. Some possible values are: Microsoft.Intune/MobileApps/Read, Microsoft.Intune/DeviceConfigurations/Write, Microsoft.Intune/ManagedDevices/Retire, and Microsoft.Intune/DeviceCompliancePolicies/Assign. This Permissions property offers a comprehensive view of the user's effective access rights, ensuring that they can only perform actions relevant to their assigned roles. This property is read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementAssignedRoleDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignedRoleDefinition",
  "roleDefinitionDisplayName": "String",
  "permissions": [
    "String"
  ]
}
```