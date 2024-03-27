---
title: "adminUnitCreationOptions resource type"
description: "The different management choices for the administrative units to be provisioned."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# adminUnitCreationOptions resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The different management choices for the administrative units to be provisioned.

## Properties

| Property                      | Type    | Description                                                                                 |
| :---------------------------- | :------ | :------------------------------------------------------------------------------------------ |
| createBasedOnOrg              | Boolean | Indicates whether the administrative unit should be created based on the org.                |
| createBasedOnOrgPlusRoleGroup | Boolean | indicates whether the administrative unit should be created based on the org and role group. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.adminUnitCreationOptions"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.adminUnitCreationOptions",
  "createBasedOnOrg": "Boolean",
  "createBasedOnOrgPlusRoleGroup": "Boolean"
}
```
