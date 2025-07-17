---
title: 'standardWebPart resource type'
description: Represents a standard web part instance on a SharePoint page.
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
ms.date: 07/22/2024
---

# standardWebPart resource type

Namespace: microsoft.graph



Represents a standard web part instance on a SharePoint page.

Inherits from [webPart](../resources/webpart.md).

## Properties

| Property               | Type                                       | Description                                                                                                     |
| :--------------------- | :----------------------------------------- | :-------------------------------------------------------------------------------------------------------------- |
| containerTextWebPartId | string                                     | The instance identifier of the container text webPart. It only works for inline standard webPart in rich text webParts. |
| data                   | [webPartData](../resources/webpartdata.md) | Data of the webPart.                                                                                            |
| id                     | String                                     | Instance identifier of the webPart. Inherited from [entity](../resources/entity.md).                            |
| webPartType            | String                                     | A Guid that indicates the webPart type.                                                         |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.standardWebPart",
  "baseType": "microsoft.graph.webPart",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.standardWebPart",
  "containerTextWebPartId": "String",
  "id": "String (identifier)",
  "webPartType": "String",
  "data": {
    "@odata.type": "microsoft.graph.webPartData"
  }
}
```
