---
title: "licenseDetails resource type"
description: "Contains information about a license assigned to a user."
ms.localizationpriority: medium
author: "frank-masuelli"
ms.subservice: entra-users
doc_type: resourcePageType
ms.date: 05/23/2024
---

# licenseDetails resource type

Namespace: microsoft.graph

Contains information about a license assigned to a user.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List license details](../api/user-list-licensedetails.md) | [licenseDetails](../resources/licensedetails.md) collection |Retrieve a list of [licenseDetails](../resources/licensedetails.md) objects for a user.|
|[Get](../api/licensedetails-getteamslicensingdetails.md)|[teamsLicensingDetails](../resources/teamsLicensingDetails.md) object|Get the Microsoft Teams license details for the specified user.|

<!--|[Get licenseDetails](../api/licensedetails-get.md) | licenseDetails |Read properties and relationships of a licenseDetails object.|-->

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| The unique identifier for the license detail object. Read-only. Key. Not nullable. |
|servicePlans|[servicePlanInfo](serviceplaninfo.md) collection| Information about the service plans assigned with the license. Read-only. Not nullable. |
|skuId|Guid| Unique identifier (GUID) for the service SKU. Equal to the **skuId** property on the related [subscribedSku](subscribedsku.md) object. Read-only. |
|skuPartNumber|String| Unique SKU display name. Equal to the **skuPartNumber** on the related [subscribedSku](subscribedsku.md) object; for example, `AAD_Premium`. Read-only. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.licenseDetails"
}-->

```json
{
  "id": "String (identifier)",
  "servicePlans": [{"@odata.type": "microsoft.graph.servicePlanInfo"}],
  "skuId": "Guid",
  "skuPartNumber": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "licenseDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

