---
title: "fileHash resource type"
description: "Represents a file hash value that is reported as part of the security detection alert, usually in relation to some File entity instance."
author: "MSRonBorysowski"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# fileHash resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a file hash value that is reported as part of the security detection alert, usually in relation to some File entity instance.

## Properties

| Property   | Type                                                                    | Description                             |
|:-----------|:------------------------------------------------------------------------|:----------------------------------------|
| value      | String                                                                  | The hash value. |
| algorithm  | [microsoft.graph.security.fileHashAlgorithm](#filehashalgorithm-values) | The hash algorithm type.                |

### fileHashAlgorithm values

| Member             | Description                                                    |
|:-------------------|:---------------------------------------------------------------|
| Unknown            | Unknown hash algorithm, used mostly for forward compatibility. |
| MD5                | MD5 hash type.                                                 |
| SHA1               | SHA1 hash type.                                                |
| SHA256             | SHA256 hash type.                                              |
| SHA256AC           | SHA256 Authenticode hash type.                                 |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.              |


## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.fileHash"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.security.fileHash",
    "value": "String",
    "algorithm": "String",
}
```
