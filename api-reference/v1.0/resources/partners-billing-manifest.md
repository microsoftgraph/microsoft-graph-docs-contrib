---
title: "manifest resource type"
description: "Represents metadata for the exported data."
author: "sourishdeb"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
---

# manifest resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents metadata for the exported data. Use the metadata to get details of the file you want to download from an Azure Blob Storage.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get manifest](../api/partners-billing-manifest-get.md)|[microsoft.graph.partners.billing.manifest](../resources/partners-billing-manifest.md)|Read the properties and relationships of a [manifest](../resources/partners-billing-manifest.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|blobCount|Int32|The total file count for this partner tenant ID.|
|blobs|[microsoft.graph.partners.billing.blob](../resources/partners-billing-blob.md) collection|A collection of blob objects that contain details of all the files for the partner tenant ID.|
|createdDateTime|DateTimeOffset|The date and time when a manifest resource was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|dataFormat|String|The billing data file format. The possible value is: `compressedJSONLines`. Each blob is a compressed file and data in the file is in [JSON lines](https://jsonlines.org/) format. Decompress the file to access the data.|
|eTag|String|Version of data represented by the manifest. Any change in **eTag** indicates a new data version.|
|id|String|The unique identifier for the **manifest**. Inherited from [entity](../resources/entity.md).|
|partitionType|String|Indicates the division of data. If a given partition has more than the supported number, the data is split into multiple files, each file representing a specific **partitionValue**. By default, the data in the file is partitioned by the number of line items.|
|partnerTenantId|String|The Microsoft Entra tenant ID of the partner.|
|rootDirectory|String|The root directory that contains all the files.|
|sasToken|String|The SAS token for accessing the directory or an individual file in the directory.|
|schemaVersion|String|The version of the manifest schema.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.manifest",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "blobCount": "Int32",
  "blobs": [{"@odata.type": "microsoft.graph.partners.billing.blob"}],
  "createdDateTime": "String (timestamp)",
  "dataFormat": "String",
  "eTag": "String",
  "id": "String (identifier)",
  "partitionType": "String",
  "partnerTenantId": "String",
  "rootDirectory": "String",
  "sasToken": "String",
  "schemaVersion": "String"
}
```
