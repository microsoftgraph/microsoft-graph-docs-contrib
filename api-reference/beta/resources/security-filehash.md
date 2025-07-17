---
title: "fileHash resource type"
description: "Represents a file hash value that is reported as part of a security detection alert, usually in relation to a file entity instance."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# fileHash resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file hash value that is reported as part of a security detection alert, usually in relation to a file entity instance.

## Properties

| Property   | Type                                                                    | Description                                                           |
|:-----------|:------------------------------------------------------------------------|:----------------------------------------------------------------------|
| algorithm  | [microsoft.graph.security.fileHashAlgorithm](#filehashalgorithm-values) | The hash algorithm type. Possible values are: `unknown`, `md5`, `sha1`, `sha256`, `sha256ac`, `unknownFutureValue`. |
| value      | String                                                                  | The hash value. |


### fileHashAlgorithm values

| Member                 | Description                                                           |
|:-----------------------|:----------------------------------------------------------------------|
| unknown                | Unknown hash algorithm that is used mostly for forward compatibility. |
| md5                    | MD5 hash type.                                                        |
| sha1                   | SHA1 hash type.                                                       |
| sha256                 | SHA256 hash type.                                                     |
| sha256ac               | SHA256 authenticode hash type.                                        |
| unknownFutureValue     | Evolvable enumeration sentinel value. Don't use.                     |


## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.fileHash"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.security.fileHash",
    "algorithm": "String",
    "value": "String"
}
```
