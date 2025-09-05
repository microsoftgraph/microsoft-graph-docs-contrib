---
title: "sharePointMigrationContainerInfo resource type"
description: "Azure blob containers as temporary migration storage"
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationContainerInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharePointMigrationContainerInfo** type contains the Azure Blob Container URLs and the key for content encryption. The Azure containers are used as temporary storage for migration content and metadata.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dataContainerUri|String|A valid URL with SAS token for accessing Azure Blob Storage Container, which contains file content. Read-only. Only on OneDrive and SharePoint.|
|metadataContainerUri|String|A valid URL with SAS token for accessing Azure Blob Storage Container, which contains file metadata. Read-only. Only on OneDrive and SharePoint.|
|encryptionKey|String|Provides AES-256-CBC encryption key if files stored in Azure Blob Containers are encrypted. The key is base64 encoded. Read-only. Only on OneDrive and SharePoint.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointMigrationContainerInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointMigrationContainerInfo",
  "dataContainerUri": "String",
  "metadataContainerUri": "String",
  "encryptionKey": "String"
}
```
