---
title: "externalItemInformationProtectionLabel resource type"
description: "Represents a Microsoft Purview sensitivity label for an item indexed by a Microsoft Search externalConnection."
ms.localizationpriority: medium
author: "bala5765"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 06/08/2026
---

# externalItemInformationProtectionLabel resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Purview sensitivity label for an item indexed by a Microsoft Search [externalConnection](externalconnectors-externalconnection.md).

## Properties

| Property       | Type   | Description                                        |
|:---------------|:-------|:---------------------------------------------------|
| sensitivityLabelId          | String | The GUID of the Purview sensitivity label. To get the label GUID, use the [Get sensitivityLabel](../api/sensitivitylabel-get.md) API or the [Get-Label](/powershell/module/exchangepowershell/get-label?view=exchange-ps) PowerShell command.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalConnectors.externalItemInformationProtectionLabel",
  "baseType": null
}-->
```json
{
  "sensitivityLabelId": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "externalItemInformationProtectionLabel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
