---
title: "engagementRole resource type"
description: "Represents the role management in Viva Engage which involves fetching various admin roles and corp comm role within the Viva Engage platform."
author: "richafnu"
ms.date: 03/27/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: resourcePageType
---

# Role

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

<!-- Para for explaining the VE roles and the entity type. -->
<!-- Viva Engage supports role-based access by enabling the assignment of predefined administrative roles (such as Network Admin and Verified Admin) and corporate communication roles within the platform.

These assignable roles are predefined and managed by Viva Engage. Custom roles cannot be created or deleted. For a complete list of supported roles and their associated assignment, refer to the [Manage administrator roles in Viva Engage](https://learn.microsoft.com/en-us/viva/engage/eac-key-admin-roles-permissions).

While Azure Active Directory (AAD) roles are managed through the Microsoft Entra admin center, Viva Engage-specific roles can be assigned and managed using Viva Engage platform and Microsoft Graph APIs. For details on managing AAD roles, see the [Microsoft 365 admin center guide](https://learn.microsoft.com/en-us/microsoft-365/admin/add-users/assign-admin-roles?view=o365-worldwide). -->

The role resource type represents a predefined Viva Engage role. Each role includes a unique identifier and display name and can be assigned to one or more users within the platform.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/employeeexperience-list-roles.md)|[engagementRole](../resources/engagementrole.md) collection|Get the static list of the assignable roles in Viva Engage.|
|[List](../api/employeeexperienceuser-list-assignedroles.md)|[engagementRole](../resources/engagementrole.md)|Get a list of Viva Engage roles assigned to the signed-in user.|
|[List](../api/employeeexperienceuser-list-assignedroles.md)|[engagementRole](../resources/engagementrole.md)|Get a list of  Viva Engage roles assigned to a user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the role.|
|id|String|The unique identifier of the role. Read-only. Inherits from [entity](../resources/entity.md)|

## JSON representation
The following JSON representation shows the resource type.

``` json
{
  "@odata.type": "#microsoft.graph.engagementRole",
  "id": "String (identifier)",
  "displayName": "String"
}
```
