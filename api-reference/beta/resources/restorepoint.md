---
title: "restorePoint resource type"
description: "Describes Restore Point and its properties"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restorePoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

RestorePoints represent the timestamp when an [artifact](../resources/restoreartifactbase.md) is protected by [protectionPolicy](../resources/protectionpolicybase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List restorePoint](../api/restorepoint-list.md)|[restorePoint](../resources/restorepoint.md) collection|Get a list of the [restorePoint](../resources/restorepoint.md) and their properties.|
|[Search](../api/restorepoint-search.md)|[restorePointSearchResponse](../resources/restorepointsearchresponse.md)|Search restorepoints for given [protectionUnits](../resources/protectionunitbase.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the restore point.|
|protectionDateTime|DateTimeOffset|Date time when restore point was created.|
|expirationDateTime|DateTimeOffset|Expiration date time of the restore point.|
|tags|[restorePointTags](../resources/restorepoint.md#restorepointtags-values)|Specifies the preference of of restore points..The possible values are: `none`, `fastRestore`, `unknownFutureValue`.|

### restorePointTags values

|Member | Description |
|:------|:------------|
|none   | No Tag      |
|fastRestore | Tag to get fast restore point.|
|unknownFutureValue | Marker value for future compatibility.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|protectionUnit|[protectionUnitBase](../resources/protectionunitbase.md)|Protection Units refers to the site/drive/mailbox units that are being protected under the Protection Policy.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.restorePoint",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restorePoint",
  "id": "String (identifier)",
  "protectionDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "tags": "String"
}
```
