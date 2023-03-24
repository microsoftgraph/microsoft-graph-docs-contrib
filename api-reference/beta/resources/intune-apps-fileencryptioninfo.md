---
title: "fileEncryptionInfo resource type"
description: "Contains properties for file encryption information for the content version of a line of business app."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# fileEncryptionInfo resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for file encryption information for the content version of a line of business app.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|encryptionKey|Binary|The key used to encrypt the file content.|
|initializationVector|Binary|The initialization vector (IV) used for the encryption algorithm. Must be 16 bytes.|
|mac|Binary|The hash of the concatenation of the IV and encrypted file content. Must be 32 bytes.|
|macKey|Binary|The key used to compute the message authentication code of the concatenation of the IV and encrypted file content. Must be 32 bytes.|
|profileIdentifier|String|The profile identifier. Maps to the strategy used to encrypt the file. Currently, only ProfileVersion1 is supported.|
|fileDigest|Binary|The file digest prior to encryption. ProfileVersion1 requires a non-null FileDigest.|
|fileDigestAlgorithm|String|The file digest algorithm. ProfileVersion1 currently only supports SHA256 for the FileDigestAlgorithm.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.fileEncryptionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.fileEncryptionInfo",
  "encryptionKey": "binary",
  "initializationVector": "binary",
  "mac": "binary",
  "macKey": "binary",
  "profileIdentifier": "String",
  "fileDigest": "binary",
  "fileDigestAlgorithm": "String"
}
```
