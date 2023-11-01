---
title: "encryptedAzureStorageAccountFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# encryptedAzureStorageAccountFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List encryptedAzureStorageAccountFindings](../api/encryptedazurestorageaccountfinding-list.md)|[encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) collection|Get a list of the [encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) objects and their properties.|
|[Get encryptedAzureStorageAccountFinding](../api/encryptedazurestorageaccountfinding-get.md)|[encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md)|Read the properties and relationships of an [encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) object.|
|[Update encryptedAzureStorageAccountFinding](../api/encryptedazurestorageaccountfinding-update.md)|[encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md)|Update the properties of an [encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) object.|
|[Delete encryptedAzureStorageAccountFinding](../api/encryptedazurestorageaccountfinding-delete.md)|None|Delete an [encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) object.|
|[List authorizationSystemResource](../api/encryptedazurestorageaccountfinding-list-storageaccount.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the storageAccount navigation property.|
|[Add authorizationSystemResource](../api/encryptedazurestorageaccountfinding-post-storageaccount.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add storageAccount by posting to the storageAccount collection.|
|[Remove authorizationSystemResource](../api/encryptedazurestorageaccountfinding-delete-storageaccount.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|encryptionManagedBy|azureEncryption|**TODO: Add Description**.The possible values are: `microsoftStorage`, `microsoftKeyVault`, `customer`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|storageAccount|[authorizationSystemResource](../resources/authorizationsystemresource.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.encryptedAzureStorageAccountFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.encryptedAzureStorageAccountFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "encryptionManagedBy": "String"
}
```

