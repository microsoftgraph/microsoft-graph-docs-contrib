---
title: "schema resource type"
description: "The connection schema determines how your content added into a connection will be used in various Microsoft Graph experiences."
ms.localizationpriority: medium
author: "snlraju-msft"
ms.prod: "search"
doc_type: "resourcePageType"
---

# schema resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The [connection](externalconnectors-externalconnection.md) schema determines how your external content will be used in various Microsoft Graph experiences. Schema is a flat list of all the properties that you plan to add to the connection along with their attributes, labels, and aliases. You must register the schema before adding items into the connection.

## Methods

| Method                                                    | Return Type                   | Description |
|:----------------------------------------------------------|:------------------------------|:--|
| [Create schema](../api/externalconnectors-externalconnection-post-schema.md) | None *or* [schema](externalconnectors-schema.md) | Register connection schema. |
| [Get schema](../api/externalconnectors-schema-get.md)                        | [schema](externalconnectors-schema.md)           | Read properties of a schema object. |

## Properties

| Property   | Type                               | Description                |
|:-----------|:-----------------------------------|:---------------------------|
| baseType   | String                             | Must be set to `microsoft.graph.externalItem`. Required. |
| properties | [property](externalconnectors-property.md) collection | The properties defined for the items in the connection. The minimum number of properties is one, the maximum is 128. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.externalConnectors.schema",
  "keyProperty": "id"
}-->

```json
{
  "baseType": "String",
  "id": "String (identifier)",
  "properties": [
    {
      "name": "String",
      "type": "String",
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "schema resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
