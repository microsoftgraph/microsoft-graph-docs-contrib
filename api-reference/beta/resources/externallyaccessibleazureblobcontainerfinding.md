---
title: "externallyAccessibleAzureBlobContainerFinding resource type"
description: "Get insights into Azure blob containers that are accessible externally*"
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# externallyAccessibleAzureBlobContainerFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get insights into Azure blob containers that are accessible externally

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externallyAccessibleAzureBlobContainerFindings](../api/externallyaccessibleazureblobcontainerfinding-list.md)|[externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) collection|Get a list of the [externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) objects and their properties.|
|[Get externallyAccessibleAzureBlobContainerFinding](../api/externallyaccessibleazureblobcontainerfinding-get.md)|[externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md)|Read the properties and relationships of an [externallyAccessibleAzureBlobContainerFinding](../resources/externallyaccessibleazureblobcontainerfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibility|azureAccessType|resources access type.The possible values are: `public`, `private`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset| Inherited from [finding](../resources/finding.md).|
|encryptionManagedBy|azureEncryption|Specifies who manages encryption of Azure storage accounts.The possible values are: `microsoftStorage`, `microsoftKeyVault`, `customer`, `unknownFutureValue`.|
|id|String|Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|storageAccount|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Represents a resource in an authorization system|

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

