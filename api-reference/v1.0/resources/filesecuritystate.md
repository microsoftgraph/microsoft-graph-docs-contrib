---
title: "fileSecurityState resource type"
description: "Contains information about the file (not process) related to the alert."
ms.localizationpriority: medium
author: "preetikr"
ms.subservice: security
doc_type: resourcePageType
ms.date: 07/22/2024
---

# fileSecurityState resource type

Namespace: microsoft.graph

Contains information about the file (not process) related to the alert.

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|fileHash|[fileHash](filehash.md)|Complex type containing file hashes (cryptographic and location-sensitive).|
|name|String|File name (without path).|
|path|String|Full file path of the file/imageFile.|
|riskScore|String|Provider generated/calculated risk score of the alert file. Recommended value range of 0-1, which equates to a percentage.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fileSecurityState"
}-->

```json
{
  "fileHash": {"@odata.type": "microsoft.graph.fileHash"},
  "name": "String",
  "path": "String",
  "riskScore": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fileSecurityState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

