---
title: "attributeDefinition resource type"
description: "Describes an attribute of an object."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 07/22/2024
---

# attributeDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes an attribute of an object.

## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|anchor         |Boolean    | `true` if the attribute should be used as the anchor for the object. Anchor attributes must have a unique value identifying an object, and must be immutable. Default is `false`. One, and only one, of the object's attributes must be designated as the anchor to support synchronization. |
|caseExact      |Boolean    |`true` if value of this attribute should be treated as case-sensitive. This setting affects how the synchronization engine detects changes for the attribute.|
|defaultValue   |String     |The default value of the attribute.|
|flowNullValues |Boolean    |'true' to allow null values for attributes.|
|metadata       |[attributeDefinitionMetadataEntry](../resources/synchronization-attributedefinitionmetadataentry.md) collection   |Metadata for the given object.|
|multivalued    |Boolean    |`true` if an attribute can have multiple values. Default is `false`.|
|mutability     |mutability     |An attribute's mutability. Possible values are:  `ReadWrite`, `ReadOnly`, `Immutable`, `WriteOnly`. Default is `ReadWrite`.|
|name           |String     |Name of the attribute. Must be unique within the object definition. Not nullable.|
|required       |Boolean    |`true` if attribute is required. Object can not be created if any of the required attributes are missing. If during synchronization, the required attribute has no value, the default value will be used. If default the value was not set, synchronization will record an error.|
|referencedObjects|[referencedObject](../resources/synchronization-referencedobject.md) collection |For attributes with `reference` type, lists referenced objects (for example, the `manager` attribute would list `User` as the referenced object).|
|type           |attributeType     |Attribute value type. Possible values are: `String`, `Integer`, `Reference`, `Binary`, `Boolean`,`DateTime`. Default is `String`.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attributeDefinition"
}-->

```json
{
  "anchor": true,
  "caseExact": true,
  "defaultValue": "String",
  "flowNullValues": true,
  "metadata": [
    {
      "@odata.type": "microsoft.graph.attributeDefinitionMetadataEntry"
    }
  ],
  "multivalued": true,
  "mutability": "String",
  "name": "String",
  "referencedObjects": [
    {
      "@odata.type": "microsoft.graph.referencedObject"
    }
  ],
  "required": true,
  "type": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "attributeDefinition resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


