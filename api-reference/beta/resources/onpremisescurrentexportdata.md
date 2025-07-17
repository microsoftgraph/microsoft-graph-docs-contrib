---
title: "onPremisesCurrentExportData resource type"
description: "Data for the current export run."
author: dhanyahk
ms.reviewer: sgupta, abhishek.badjatya, dhanyahk
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 10/03/2024
---

# onPremisesCurrentExportData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Data for the current export run.

## Properties

| Property                           | Type   | Description                                                                                            |
| :--------------------------------- | :----- | :----------------------------------------------------------------------------------------------------- |
| clientMachineName                  | String | The name of the onPremises client machine that ran the last export.                                   |
| pendingObjectsAddition             | Int32  | The count of pending adds from on-premises directory.                                                  |
| pendingObjectsDeletion             | Int32  | The count of pending deletes from on-premises directory.                                               |
| pendingObjectsUpdate               | Int32  | The count of pending updates from on-premises directory.                                               |
| serviceAccount                     | String | The name of the dirsync service account that is configured to connect to the directory.               |
| successfulLinksProvisioningCount   | Int64  | The count of updated links during the current directory sync export run.                               |
| successfulObjectsProvisioningCount | Int32  | The count of objects that were successfully provisioned during the current directory sync export run. |
| totalConnectorSpaceObjects         | Int32  | The total number of objects in the AAD Connector Space.                                                |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
