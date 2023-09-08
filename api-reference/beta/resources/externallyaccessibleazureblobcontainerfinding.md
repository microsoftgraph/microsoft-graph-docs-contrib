---
title: "externallyAccessibleAzureBlobContainerFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# externallyAccessibleAzureBlobContainerFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externallyAccessibleAzureBlobContainerFindings](../api/externallyaccessibleazureblobcontainerfinding-list.md)|[externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) collection|Get a list of the [externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) objects and their properties.|
|[Get externallyAccessibleAzureBlobContainerFinding](../api/externallyaccessibleazureblobcontainerfinding-get.md)|[externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md)|Read the properties and relationships of an [externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) object.|
|[Update externallyAccessibleAzureBlobContainerFinding](../api/externallyaccessibleazureblobcontainerfinding-update.md)|[externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md)|Update the properties of an [externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) object.|
|[Delete externallyAccessibleAzureBlobContainerFinding](../api/externallyaccessibleazureblobcontainerfinding-delete.md)|None|Delete an [externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) object.|
|[List authorizationSystemResource](../api/externallyaccessibleazureblobcontainerfinding-list-storageaccount.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the storageAccount navigation property.|
|[Add authorizationSystemResource](../api/externallyaccessibleazureblobcontainerfinding-post-storageaccount.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add storageAccount by posting to the storageAccount collection.|
|[Remove authorizationSystemResource](../api/externallyaccessibleazureblobcontainerfinding-delete-storageaccount.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibility|azureAccessType|**TODO: Add Description**.The possible values are: `public`, `private`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|encryptionManagedBy|azureEncryption|**TODO: Add Description**.The possible values are: `microsoftStorage`, `microsoftKeyVault`, `customer`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|storageAccount|[authorizationSystemResource](../resources/authorizationsystemresource.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externallyAccessibleAzureBlobContainerFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externallyAccessibleAzureBlobContainerFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "accessibility": "String",
  "encryptionManagedBy": "String"
}
```

