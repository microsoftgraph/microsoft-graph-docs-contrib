---
title: "directoryDefinition resource type"
description: "Provides the synchronization engine information about a directory and its objects."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 05/23/2024
---

# directoryDefinition resource type

Namespace: microsoft.graph

Provides the synchronization engine information about a directory and its objects. This resource tells the synchronization engine, for example, that the directory has objects named **user** and **group**, which attributes are supported for those objects, and the types for those attributes. In order for the object and attribute to participate in [synchronization rules](synchronization-synchronizationrule.md) and [object mappings](synchronization-objectmapping.md), they must be defined as part of the directory definition.

In general, the default [synchronization schema](synchronization-synchronizationschema.md) provided as part of the [synchronization template](synchronization-synchronizationtemplate.md) defines the most commonly used objects and attributes for that directory. However, if the directory supports the addition of custom attributes, you might want to expand the default definition with your own custom objects or attributes. For more information, see the following articles.

- [Configure synchronization with custom attributes](/graph/synchronization-configure-with-custom-target-attributes)
- [Configure synchronization with directory extension attributes](/graph/synchronization-configure-with-directory-extension-attributes).

Directory definitions are updated as part of the [synchronization schema](synchronization-synchronizationschema.md).

Inherits from [entity](../resources/entity.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Discover](../api/synchronization-directorydefinition-discover.md) | [directoryDefinition](synchronization-directorydefinition.md) |Discover the schema and supported properties of the directory.|

## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|id           |String     |Directory identifier. Not nullable. Inherited from [entity](../resources/entity.md).|
|name           |String     |Name of the directory. Must be unique within the [synchronization schema](synchronization-synchronizationschema.md). Not nullable.|
|objects        |[objectDefinition](synchronization-objectdefinition.md) collection    |Collection of objects supported by the directory.|
|readOnly|Boolean| Whether this object is read-only.|
|version|String|Read only value that indicates version discovered. `null` if discovery hasn't yet occurred.|
|discoveryDateTime|DateTimeOffset| Represents the discovery date and time using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|discoverabilities|directoryDefinitionDiscoverabilities| Read-only value indicating what type of discovery the app supports. The possible values are: `None`, `AttributeNames`, `AttributeDataTypes`, `AttributeReadOnly`, `ReferenceAttributes`, `UnknownFutureValue`. This is a multi-valued object.| 

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directoryDefinition"
}-->

```json
{
  "discoverabilities": "String",
  "discoveryDateTime": "DateTimeOffset",
  "id": "String",
  "name": "String",
  "objects": [
    {
      "@odata.type": "microsoft.graph.objectDefinition"
    }
  ],
  "version": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directoryDefinition resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


