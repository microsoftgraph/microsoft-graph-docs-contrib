---
title: "invalidLicenseAlertIncident resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# invalidLicenseAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List invalidLicenseAlertIncidents](../api/invalidlicensealertincident-list.md)|[invalidLicenseAlertIncident](../resources/invalidlicensealertincident.md) collection|Get a list of the [invalidLicenseAlertIncident](../resources/invalidlicensealertincident.md) objects and their properties.|
|[Get invalidLicenseAlertIncident](../api/invalidlicensealertincident-get.md)|[invalidLicenseAlertIncident](../resources/invalidlicensealertincident.md)|Read the properties and relationships of an [invalidLicenseAlertIncident](../resources/invalidlicensealertincident.md) object.|
|[Update invalidLicenseAlertIncident](../api/invalidlicensealertincident-update.md)|[invalidLicenseAlertIncident](../resources/invalidlicensealertincident.md)|Update the properties of an [invalidLicenseAlertIncident](../resources/invalidlicensealertincident.md) object.|
|[Delete invalidLicenseAlertIncident](../api/invalidlicensealertincident-delete.md)|None|Delete an [invalidLicenseAlertIncident](../resources/invalidlicensealertincident.md) object.|
|[remediate](../api/invalidlicensealertincident-remediate.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|tenantLicenseStatus|String|**TODO: Add Description**|

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

