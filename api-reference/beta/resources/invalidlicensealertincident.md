---
title: "invalidLicenseAlertIncident resource type"
description: "Represents an alert incident that is triggered if the current Azure AD organization does not have a valid Azure AD Premium P2 license."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# invalidLicenseAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if the current Azure AD organization does not have a valid Azure AD Premium P2 license.

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier for an alert incident. For example, it could be a role assignment id if the incident represents a role assignment Inherited from [entity](../resources/entity.md).|
|tenantLicenseStatus|String|Status of the tenant P2 license.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

