---
title: "integratedApplicationMetadata resource type"
description: "Represents metadata about the application integrated with Purview data security APIs."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# integratedApplicationMetadata resource type

Namespace: microsoft.dataClassificationService.contract

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides metadata about the application (e.g., a browser extension, a service) that is directly calling and integrating with the Purview data security APIs (`processContent`, `processContentAsync`, `compute`).

## Properties

| Property | Type   | Description                                      |
| :------- | :----- | :----------------------------------------------- |
| name     | String | The name of the integrated application.        |
| version  | String | The version number of the integrated application. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.integratedApplicationMetadata",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.integratedApplicationMetadata",
  "name": "String",
  "version": "String"
}
```
