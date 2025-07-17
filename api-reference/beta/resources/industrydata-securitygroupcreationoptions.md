---
title: "securityGroupCreationOptions resource type"
description: "The different options for the security groups to be provisioned."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# securityGroupCreationOptions resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The different options for the security groups to be provisioned.

## Properties

| Property                      | Type    | Description                                                                                               |
| :---------------------------- | :------ | :-------------------------------------------------------------------------------------------------------- |
| createBasedOnOrgPlusRoleGroup | Boolean | Indicates whether the security group should be created based on the org and role group. |
| createBasedOnRoleGroup        | Boolean | A Boolean choice indicating whether the security group should be created based on the role group          |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.securityGroupCreationOptions"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.securityGroupCreationOptions",
  "createBasedOnRoleGroup": "Boolean",
  "createBasedOnOrgPlusRoleGroup": "Boolean"
}
```
