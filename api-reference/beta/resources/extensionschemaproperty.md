---
title: "extensionSchemaProperty resource type"
description: "Use the **extensionSchemaProperty** resource to define a property's name and its type, as part of a schemaExtension definition."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: extensions
author: "dkershaw10"
---

# extensionSchemaProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use the **extensionSchemaProperty** resource to define a property's name and its type, as part of a [schemaExtension](schemaextension.md) definition.


## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|name|String| The name of the strongly typed property defined as part of a schema extension.|
|type|String| The type of the property that is defined as part of a schema extension. Allowed values are `Binary`, `Boolean`, `DateTime`, `Integer`, or `String`. For more information, see [Supported property data types](#supported-property-data-types).|

### Supported property data types 
The following data types are supported when defining a property in a schema extension:

| Property Type | Remarks |
|-------------|------------|
| Binary | 256 bytes maximum. |
| Boolean | Not supported for messages, events, and posts. |
| DateTime | Must be specified in ISO 8601 format. Is stored in UTC. |
| Integer | 32-bit value. Not supported for messages, events, and posts. |
| String | 256 characters maximum. |

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.extensionSchemaProperty"
}-->

```json
{
  "name": "String",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "extensionSchemaProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


