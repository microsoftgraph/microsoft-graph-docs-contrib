---
title: "manifest resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# manifest resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides metadata for the exported data.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get manifest](../api/partners.billing-manifest-get.md)|[microsoft.graph.partners.billing.manifest](../resources/partners.billing-manifest.md)|Read the properties and relationships of a [microsoft.graph.partners.billing.manifest](../resources/partners.billing-manifest.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|blobCount|Int32|Total file count for this Partner Tenant ID.|
|blobs|[microsoft.graph.partners.billing.blob](../resources/partners.billing-blob.md) collection|A collection of blob objects having the details of all the files for the partner tenant ID.|
|createdDateTime|DateTimeOffset|Manifest resource creation time in UTC.|
|dataFormat|String|The billing data file format. Possible values `compressedJSONLines`. Each blob is a compressed file and data in the file is in [JSON lines](https://jsonlines.org/) format. Decompress the file to access the data.|
|eTag|String|Version of data represented by manifest, any change in eTag indicates new data version.|
|id|String|Unique identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|partitionType|String|This property divides the data. If a given partition has more than the supported number, the data is split into multiple files corresponding to the “partitionValue.” Data in the file is by default partitioned by the number of line items.|
|partnerTenantId|String|Partner's Microsoft Entra ID Tenant ID.|
|rootDirectory|String|The root directory containing all the files.|
|sasToken|String|The SAS token for accessing the directory or individual file in the directory.|
|schemaVersion|String|The manifest schema version.|

## Relationships
None.

## JSON representation
The following JSON is a representation of the resource.
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
   "id": "6fe687d7-1e0f-4bd6-9091-4672691f64bc",
   "schemaVersion": "1",
   "dataFormat": "compressedJSON",
   "createdDateTime": "2023-03-09T06:34:34.87Z",
   "eTag": "WYjLro78HdMg6vUWR",
   "partnerTenantId": "0e195b37-4574-4539-bc42-0e539b9684c0",
   "rootDirectory": "https://adlsreconbuprodeastus201.blob.core.windows.net/{directory_path}",
   "sasToken": "{SAS}",
   "partitionType": "Default",
   "blobCount": 1,
   "blobs": [
       {
         "name": "part-00049-b016029b-a7a7-4c46-9b5e-c925ac317ac6.c000.json.gz",
         "partitionValue": "default",
       }
   ]
 }
```

