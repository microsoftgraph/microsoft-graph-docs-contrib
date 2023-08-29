---
title: "onPremisesCurrentExportData resource type"
description: "Data for the current export run."
author: "dkershaw10"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# onPremisesCurrentExportData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Data for the current export run.

## Properties

| Property                           | Type   | Description                                                                                            |
| :--------------------------------- | :----- | :----------------------------------------------------------------------------------------------------- |
| clientMachineName                  | String | The name of the onPremises client machine which ran the last export.                                   |
| pendingObjectsAddition             | Int32  | The count of pending adds from on-premises directory.                                                  |
| pendingObjectsDeletion             | Int32  | The count of pending deletes from on-premises directory.                                               |
| pendingObjectsUpdate               | Int32  | The count of pending updates from on-premises directory.                                               |
| serviceAccount                     | String | The name of the dirsync service account which is configured to connect to the directory.               |
| successfulLinksProvisioningCount   | Int64  | The count of updated links during the current directory sync export run.                               |
| successfulObjectsProvisioningCount | Int32  | The count of objects which were successfully provisioned during the current directory sync export run. |
| totalConnectorSpaceObjects         | Int32  | The total number of objects in the AAD Connector Space.                                                |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPremisesCurrentExportData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPremisesCurrentExportData",
  "pendingObjectsAddition": "Integer",
  "pendingObjectsDeletion": "Integer",
  "pendingObjectsUpdate": "Integer",
  "successfulLinksProvisioningCount": "Integer",
  "successfulObjectsProvisioningCount": "Integer",
  "clientMachineName": "String",
  "serviceAccount": "String",
  "totalConnectorSpaceObjects": "Integer"
}
```
