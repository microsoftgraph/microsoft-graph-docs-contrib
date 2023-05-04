---
title: "attributeDefinitionMetadataEntry resource type"
description: "Metadata for the given object."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "applications"
---

# attributeDefinitionMetadataEntry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Metadata for the given object.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|key|String|Possible values are: `BaseAttributeName`, `ComplexObjectDefinition`, `IsContainer`, `IsCustomerDefined`, `IsDomainQualified`, `LinkPropertyNames`, `LinkTypeName`, `MaximumLength`, `ReferencedProperty`. |
|value|String|Value of the metadata property.|

### Supported key value pairs
| Key	   |Value|
|:---------------|:----------|
|BaseAttributeName| If this attribute inherits another object, this is the name of the base attribute being inherited from.|
|ComplexObjectDefinition | A JSON containing a list of objectDefinition and objectMapping objects that together define this complex attribute.  |
|IsContainer |This flag indicates whether the attribute is a container of other entries. A group is a typical container. A "Container" is the generic notion of what a group does. |
|IsCustomerDefined |This flag indicates whether this attributeDefinition was defined by the customer. |
|IsDomainQualified |This flag indicates whether the attribute has a domain as suffix, such as userPrincipalName. |
|LinkPropertyNames  |The specific attribute names that should be looked up from the linked object and added as a virtual property on current entry. |
|LinkTypeName |The type names of the specific attribute names that should be lookded up from the linked object and added as a virtual property on current entry.  |
|MaximumLength  |To designate a target attribute as only permitting a certain number of characters as a value. |
|ReferencedProperty  |If this is a reference attribute, the property to which a reference refers.  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.metadataEntry"
}-->

```json
{
  "@odata.type": "#microsoft.graph.attributeDefinitionMetadataEntry",
  "key": "String",
  "value": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "metadataEntry resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


