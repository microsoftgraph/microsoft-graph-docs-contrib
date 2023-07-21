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

Metadata for the given object.

## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|key|attributeDefinitionMetadata|Possible values are: `BaseAttributeName`, `ComplexObjectDefinition`, `IsContainer`, `IsCustomerDefined`, `IsDomainQualified`, `LinkPropertyNames`, `LinkTypeName`, `MaximumLength`, `ReferencedProperty`. |
|value|String|Value of the metadata property.|

### Supported key-value pairs
| Key       |Value|
|:---------------|:----------|
|BaseAttributeName| If this attribute inherits from another object, this is the name of the base attribute.|
|ComplexObjectDefinition | A JSON containing a list of objectDefinition and objectMapping objects that together define this complex attribute.  |
|IsContainer |This flag indicates whether the attribute is a container for other entries. A group is a typical container. A "container" is the generic notion of what a group does. |
|IsCustomerDefined |This flag indicates whether this attributeDefinition was defined by the customer. |
|IsDomainQualified |This flag indicates whether the attribute has a domain as the suffix, such as userPrincipalName. |
|LinkPropertyNames  |The specific attribute names that should be looked up from the linked object and added as a virtual property on the current entry. |
|LinkTypeName |The type names of the specific attribute names that should be looked up from the linked object and added as a virtual property on the current entry.  |
|MaximumLength  |The maximum character length of the target attribute. |
|ReferencedProperty  |If this is a reference attribute, the property that's referenced.  |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attributeDefinitionMetadataEntry"
}
-->
``` json
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


