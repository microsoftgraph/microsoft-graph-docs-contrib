---
title: "fileStorageContainerType resource type"
description: "**TODO: Add Description**"
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# fileStorageContainerType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/filestorage-list-containertypes.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md) collection|Get a list of the fileStorageContainerType objects and their properties.|
|[Create](../api/filestorage-post-containertypes.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Create a new fileStorageContainerType object.|
|[Get](../api/filestoragecontainertype-get.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Read the properties and relationships of a fileStorageContainerType object.|
|[Update](../api/filestoragecontainertype-update.md)|[fileStorageContainerType](../resources/filestoragecontainertype.md)|Update the properties of a fileStorageContainerType object.|
|[Delete](../api/filestorage-delete-containertypes.md)|None|Delete a fileStorageContainerType object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|billingClassification|fileStorageContainerBillingClassification|**TODO: Add Description**.The possible values are: `standard`, `trial`, `directToCustomer`, `unknownFutureValue`.|
|billingStatus|fileStorageContainerBillingStatus|**TODO: Add Description**.The possible values are: `invalid`, `valid`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|etag|String|**TODO: Add Description**|
|expirationDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|name|String|**TODO: Add Description**|
|owningAppId|Guid|**TODO: Add Description**|
|settings|[fileStorageContainerTypeSettings](../resources/filestoragecontainertypesettings.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.fileStorageContainerType",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileStorageContainerType",
  "id": "String (identifier)",
  "name": "String",
  "owningAppId": "Guid",
  "billingClassification": "String",
  "billingStatus": "String",
  "createdDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "settings": {
    "@odata.type": "microsoft.graph.fileStorageContainerTypeSettings"
  },
  "etag": "String"
}
```

