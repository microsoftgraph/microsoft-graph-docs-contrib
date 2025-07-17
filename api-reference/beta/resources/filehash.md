---
title: "fileHash resource type"
description: "Contains stateful information about file hashes (cryptographic and location-sensitive)."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: security
author: "preetikr"
ms.date: 07/22/2024
---

# fileHash resource type

Namespace: microsoft.graph

Contains stateful information about file hashes (cryptographic and location-sensitive).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hashType|[fileHashType](filehashtypeenumtype.md) enum|File hash type. Possible values are: `unknown`, `sha1`, `sha256`, `md5`, `authenticodeHash256`, `lsHash`, `ctph`, `peSha1`, `peSha256`.|
|hashValue|String|Value of the file hash.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fileHash"
}-->

```json
{
  "hashType": "@odata.type: microsoft.graph.fileHashType",
  "hashValue": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fileHash resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


