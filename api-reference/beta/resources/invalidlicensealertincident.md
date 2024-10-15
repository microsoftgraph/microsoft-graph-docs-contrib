---
title: "invalidLicenseAlertIncident resource type"
description: "Represents the details of an alert incident that is triggered if the current tenant doesn't have a valid Microsoft Entra ID P2 license."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Invalid license
---

# invalidLicenseAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an alert incident that is triggered if the current tenant doesn't have a valid Microsoft Entra ID P2 license.

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier for the alert incident. For example, it could be a role assignment ID if the incident represents a role assignment. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|tenantLicenseStatus|String|Status of the tenant's Microsoft Entra ID P2 license.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.invalidLicenseAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.invalidLicenseAlertIncident",
  "id": "String (identifier)",
  "tenantLicenseStatus": "String"
}
```
