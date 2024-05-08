---
title: "restorePoint resource type"
description: "Describes Restore Point and it's properties"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restorePoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

RestorePoints represent the timestamp when an [artifact](../resources/restoreartifactbase.md) is protected by [protectionPoliy](../resources/protectionpolicy.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List restorePoint objects](../api/siterestoreartifact-list-restorepoint.md)|[restorePoint](../resources/restorepoint.md) collection|Get a list of the [restorePoint](../resources/restorepoint.md) objects and their properties.|
|[Create restorePoint](../api/siterestoreartifact-post-restorepoint.md)|[restorePoint](../resources/restorepoint.md)|Create a new [restorePoint](../resources/restorepoint.md) object.|
|[Get restorePoint](../api/restorepoint-get.md)|[restorePoint](../resources/restorepoint.md)|Read the properties and relationships of a [restorePoint](../resources/restorepoint.md) object.|
|[Update restorePoint](../api/restorepoint-update.md)|[restorePoint](../resources/restorepoint.md)|Update the properties of a [restorePoint](../resources/restorepoint.md) object.|
|[Delete restorePoint](../api/siterestoreartifact-delete-restorepoint.md)|None|Delete a [restorePoint](../resources/restorepoint.md) object.|
|[search](../api/restorepoint-search.md)|[restorePointSearchResponse](../resources/restorepointsearchresponse.md)|Search restorepoints for given [protectionUnits](../resources/protectionunitbase.md)|
|[List protectionPolicyBase](../api/restorepoint-list-protectionpolicy.md)|[protectionPolicyBase](../resources/protectionpolicybase.md) collection|Get the protectionPolicyBase resources from the protectionPolicy navigation property.|
|[Add protectionPolicyBase](../api/restorepoint-post-protectionpolicy.md)|[protectionPolicyBase](../resources/protectionpolicybase.md)|Add protectionPolicy by posting to the protectionPolicy collection.|
|[Remove protectionPolicyBase](../api/restorepoint-delete-protectionpolicy.md)|None|Remove a [protectionPolicyBase](../resources/protectionpolicybase.md) object.|
|[List protectionUnitBase](../api/restorepoint-list-protectionunit.md)|[protectionUnitBase](../resources/protectionunitbase.md) collection|Get the protectionUnitBase resources from the protectionUnit navigation property.|
|[Add protectionUnitBase](../api/restorepoint-post-protectionunit.md)|[protectionUnitBase](../resources/protectionunitbase.md)|Add protectionUnit by posting to the protectionUnit collection.|
|[Remove protectionUnitBase](../api/restorepoint-delete-protectionunit.md)|None|Remove a [protectionUnitBase](../resources/protectionunitbase.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of the restore point.|
|protectionDateTime|DateTimeOffset|Date time when restore point was created.|
|expirationDateTime|DateTimeOffset|Expiration date time of the restore point.|
|tags|[restorePointTags](../resources/restorepoint.md#restorepointtags-values)|Specifies the preference of of restore points..The possible values are: `none`, `fastRestore`, `unknownFutureValue`.|

### restorePointTags values
|Member | Description |
|:------|:------------|
|none   | No Tag      |
|fastRestore | Tag to get fast restore point|
|unknownFutureValue | Marker value for future compatibility|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|protectionPolicy|[protectionPolicyBase](../resources/protectionpolicybase.md)| Protection Policy represents the plan defined by the Global Admin for protecting the M365 data of an organization|
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

