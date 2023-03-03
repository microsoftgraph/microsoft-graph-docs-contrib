---
title: "dataSource resource type"
description: "The dataSource entity is an abstract base class used to identify sources of content for eDiscovery."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# dataSource resource type

Namespace: microsoft.graph.security



The dataSource entity is an abstract base class used to identify sources of content for eDiscovery.

## Methods

None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **dataSource**.|
|createdDateTime|DateTimeOffset|The date and time the **dataSource** was created.|
|displayName|String|The display name of the **dataSource**. This will be the name of the SharePoint site.|
|holdStatus|microsoft.graph.security.dataSourceHoldStatus|The hold status of the **dataSource**.The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`|
|id|String| The ID of the **dataSource**. This is not the ID of the actual site.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

