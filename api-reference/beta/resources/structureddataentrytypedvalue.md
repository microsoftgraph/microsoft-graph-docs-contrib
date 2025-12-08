---
title: "structuredDataEntryTypedValue resource type"
description: "Represents the typed value for the key or value in a userConfiguration object."
author: "daiyue-microsoft"
ms.date: 11/05/2025
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# structuredDataEntryTypedValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the typed value for the key or value in a [userConfiguration](../resources/userconfiguration.md) object.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|type|structuredDataEntryValueType|The type of the value. The possible values are: `dateTime`, `boolean`, `byte`, `string`, `integer32`, `unsignedInteger32`, `integer64`, `unsignedInteger64`, `stringArray`, `byteArray`, `unknownFutureValue`.|
|values|String collection|Represents the value. The contained elements might be one of the following cases: when the **type** is `stringArray`, it contains arbitrary string values; otherwise, it contains exactly one string value. The caller is responsible for data type conversion. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.structuredDataEntryTypedValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.structuredDataEntryTypedValue",
  "type": "String",
  "values": ["String"]
}
```

