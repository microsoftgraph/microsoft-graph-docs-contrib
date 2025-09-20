---
title: "sharePointMigrationContainerInfo resource type"
description: "Contains the Azure blob container URLs and the key for content encryption."
author: "wenzhou"
ms.date: 06/04/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
---

# sharePointMigrationContainerInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the Azure blob container URLs and the key for content encryption. The Azure containers are used as temporary storage for migration content and metadata.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dataContainerUri|String|A valid URL with SAS token for accessing Azure blob storage container, which contains file content. Read-only. Only on OneDrive and SharePoint.|
|encryptionKey|String|Provides AES-256-CBC encryption key if files stored in Azure blob containers are encrypted. The key is base64 encoded. Read-only. Only on OneDrive and SharePoint.|
|metadataContainerUri|String|A valid URL with SAS token for accessing Azure blob storage container, which contains file metadata. Read-only. Only on OneDrive and SharePoint.|

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
