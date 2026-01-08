---
title: "sharePointMigrationContainerInfo resource type"
description: "Contains the Azure blob container URLs and the key for content encryption."
author: "wenzhou"
ms.date: 11/17/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
toc.title: SharePoint migration container info
---

# sharePointMigrationContainerInfo resource type

Namespace: microsoft.graph

Contains the Azure blob container URLs and the key for content encryption. The Azure containers are used as temporary storage for migration content and metadata.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dataContainerUri|String|A valid URL with a SAS token for accessing the Azure blob storage container that contains the file content. Read-only.|
|encryptionKey|String|Provides the AES-256-CBC encryption key if files stored in Azure blob containers are encrypted. The key is Base64-encoded. Read-only.|
|metadataContainerUri|String|A valid URL with a SAS token for accessing the Azure blob storage container that contains the file metadata. Read-only.|

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
  "encryptionKey": "String",
  "metadataContainerUri": "String"
}
```
