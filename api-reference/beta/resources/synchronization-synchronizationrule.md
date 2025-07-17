---
title: "synchronizationRule resource type"
description: "Defines how the synchronization should be performed for the synchronization engine."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 03/06/2024
---

# synchronizationRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines how the synchronization should be performed for the synchronization engine, including which objects to synchronize and in which direction, how objects from the source directory should be matched with objects in the target directory, and how attributes should be transformed when they're synchronized from the source to the target directory.

>**Note:** Synchronization rules define synchronization in one direction - from the source directory to the target directory. The source and target directories are defined as part of the rule properties.

Synchronization rules are updated as part of the [synchronization schema](synchronization-synchronizationschema.md).

## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|containerFilter|[containerFilter](../resources/synchronization-containerfilter.md)|The names and identifiers of organizational units that are in scope for a synchronization rule. **containerFilter** and **groupFilter** are mutually exclusive properties that cannot be configured in the same request. Currently only supported for Azure AD Connect cloud sync scenarios.|
|editable       |Boolean    |`true` if the synchronization rule can be customized; `false` if this rule is read-only and shouldn't be changed.|
|groupFilter|[groupFilter](../resources/synchronization-groupfilter.md)|The names and identifiers of groups that are in scope for a synchronization rule. **containerFilter** and **groupFilter** are mutually exclusive properties that cannot be configured in the same request. Currently only supported for Azure AD Connect cloud sync scenarios.|
|id             |String     |Synchronization rule identifier. Must be one of the identifiers recognized by the synchronization engine. Supported rule identifiers can be found in the synchronization template returned by the API.|
|metadata       |[stringKeyStringValuePair](synchronization-stringkeystringvaluepair.md) collection |Additional extension properties. Unless instructed explicitly by the support team, metadata values shouldn't be changed.|
|name           |String     |Human-readable name of the synchronization rule. Not nullable.|
|objectMappings |[objectMapping](synchronization-objectmapping.md) collection    |Collection of object mappings supported by the rule. Tells the synchronization engine which objects should be synchronized.|
|priority       |Integer    |Priority relative to other rules in the [synchronizationSchema](synchronization-synchronizationschema.md). Rules with the lowest priority number will be processed first.|
|sourceDirectoryName       |String    |Name of the source directory. Must match one of the directory definitions in [synchronizationSchema](synchronization-synchronizationschema.md).|
|targetDirectoryName       |String    |Name of the target directory. Must match one of the directory definitions in [synchronizationSchema](synchronization-synchronizationschema.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationRule"
}-->

```json
{
  "containerFilter": {
    "@odata.type": "microsoft.graph.containerFilter"
  },
  "editable": true,
  "groupFilter": {
    "@odata.type": "microsoft.graph.groupFilter"
  },
  "id": "String",
  "metadata": [
    {
      "@odata.type": "microsoft.graph.stringKeyStringValuePair"
    }
  ],
  "name": "String",
  "objectMappings": [
    {
      "@odata.type": "microsoft.graph.objectMapping"
    }
  ],
  "priority": 1024,
  "sourceDirectoryName": "String",
  "targetDirectoryName": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationRule resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


