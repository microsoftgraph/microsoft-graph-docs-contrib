---
title: "unifiedRoleManagementAlertIncident resource type"
description: "An abstract type that represents the details of a security alert incident in Privileged Identity Management (PIM) for Azure AD roles."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the alert incident resource that includes alert information for incidents in Privileged Identity Management (PIM).

This abstract type is inherited by the following derived types:
- [invalidLicenseAlertIncident](invalidlicensealertincident.md)
- 

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementAlertIncidents](../api/unifiedrolemanagementalert-list-alertincidents.md)|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) collection|Get a list of the [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) objects and their properties.|
|[Get unifiedRoleManagementAlertIncident](../api/unifiedrolemanagementalertincident-get.md)|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md)|Read the properties and relationships of an [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) object.|
|[remediate](../api/unifiedrolemanagementalertincident-remediate.md)|None|Remediate or mitigate an incident of an alert.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the alert incident. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertIncident",
  "id": "String (identifier)"
}
```

