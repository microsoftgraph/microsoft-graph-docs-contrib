---
title: "securityGroupCreationOptions resource type"
description: "The different options for the security groups to be provisioned."
author: "cristobal-buenrostro"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# securityGroupCreationOptions resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The different options for the security groups to be provisioned.

## Properties

| Property                      | Type    | Description                                                                                               |
| :---------------------------- | :------ | :-------------------------------------------------------------------------------------------------------- |
| createBasedOnOrgPlusRoleGroup | Boolean | A boolean choice indicating whether the security group should be created based on the org and role group. |
| createBasedOnRoleGroup        | Boolean | A boolean choice indicating whether the security group should be created based on the role group          |

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
