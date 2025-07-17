---
title: "dataSource resource type"
description: "The dataSource entity is an abstract base class used to identify sources of content for eDiscovery."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 06/11/2024
---

# dataSource resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The dataSource entity is an abstract base class used to identify sources of content for eDiscovery.

## Methods

None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **dataSource**.|
|createdDateTime|DateTimeOffset|The date and time the **dataSource** was created.|
|displayName|String|The display name of the **dataSource** and is the name of the SharePoint site.|
|id|String| The ID of the **dataSource** and isn't the ID of the actual site.|
|holdStatus|microsoft.graph.security.dataSourceHoldStatus|The hold status of the **dataSource**.The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`|
## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.dataSource",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataSource",
  "id": "String (identifier)",
  "displayName": "String",
  "holdStatus": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

