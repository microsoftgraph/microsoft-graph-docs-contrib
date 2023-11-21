---
title: "encryptedAzureStorageAccountFinding resource type"
description: "Represents the findings for Azure encrypted storage accounts."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# encryptedAzureStorageAccountFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the findings for Azure encrypted storage buckets.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List encryptedAzureStorageAccountFinding objects](../api/encryptedazurestorageaccountfinding-list.md)|[encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) collection|Get a list of the [encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) objects and their properties.|
|[Get encryptedAzureStorageAccountFinding](../api/encryptedazurestorageaccountfinding-get.md)|[encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md)|Read the properties and relationships of an [encryptedAzureStorageAccountFinding](../resources/encryptedazurestorageaccountfinding.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|encryptionManagedBy|azureEncryption|Specifies who manages encryption of Azure storage accounts. The possible values are: `microsoftStorage`, `microsoftKeyVault`, `customer`, `unknownFutureValue`.|
|id|String|Unique identifier for the Finding. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|storageAccount|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Represents a resource in an Azure authorization system.    |

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

