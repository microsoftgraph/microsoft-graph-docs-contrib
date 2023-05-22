---
title: "fileDetails resource type"
description: "File common properties."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# fileDetails resource type

Namespace: microsoft.graph.security

File common properties.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|fileName|String|The name of the file.|
|filePath|String|The file path (location) of the file instance. |
|filePublisher|String|The publisher of the file.|
|fileSize|Int64|The size of the file in bytes.|
|issuer|String|The certificate authority (CA) that issued the certificate.|
|sha1|String|The Sha1 cryptographic hash of the file content.|
|sha256|String|The Sha256 cryptographic hash of the file content.|
|signer|String|The signer of the signed file.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.fileDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fileDetails",
  "sha1": "String",
  "sha256": "String",
  "fileName": "String",
  "filePath": "String",
  "fileSize": "Integer",
  "filePublisher": "String",
  "signer": "String",
  "issuer": "String"
}
```

