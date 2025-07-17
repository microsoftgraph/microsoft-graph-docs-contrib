---
title: "attributeMapping resource type"
description: "Defines how values for the given target attribute should flow during synchronization."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 07/22/2024
---

# attributeMapping resource type

Namespace: microsoft.graph

Defines how values for the given target attribute should flow during synchronization.

## Properties

| Property                  | Type                      | Description    |
|:--------------------------|:--------------------------|:---------------|
|defaultValue               | String                    |Default value to be used in case the **source** property was evaluated to `null`. Optional.|
|exportMissingReferences    |Boolean                     |For internal use only.|
|flowBehavior               |attributeFlowBehavior      |Defines when this attribute should be exported to the target directory. Possible values are: `FlowWhenChanged` and `FlowAlways`. Default is `FlowWhenChanged`. |
|flowType                   |attributeFlowType          |Defines when this attribute should be updated in the target directory. Possible values are: <br/><li>`Always` (default) <br/><li>`ObjectAddOnly` - only when new object is created <br/><li> `MultiValueAddOnly` - only when the change is adding new values to a multi-valued attribute <br/><li> `ValueAddOnly` - If there is a current value, only flows "Add" operations; will not flow "Remove" operations  <br/><li> `AttributeAddOnly` - Only propagates changes if no current value exists at all <br><br> **Note:** AD2AAD provisioning jobs don't respect the `flowType` property value.  |
|matchingPriority           |Int32                      |If higher than 0, this attribute will be used to perform an initial match of the objects between source and target directories. The synchronization engine will try to find the matching object using attribute with lowest value of matching priority first. If not found, the attribute with the next matching priority will be used, and so on a until match is found or no more matching attributes are left. Only attributes that are expected to have unique values, such as email, should be used as matching attributes.|
|source                     |[attributeMappingSource](synchronization-attributemappingsource.md)     | Defines how a value should be extracted (or transformed) from the source object. |
|targetAttributeName        |String                     |Name of the attribute on the target object. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attributeMapping"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeMapping",
  "defaultValue": "String",
  "exportMissingReferences": "Boolean",
  "flowBehavior": "String",
  "flowType": "String",
  "matchingPriority": "Integer",
  "source": {
    "@odata.type": "microsoft.graph.attributeMappingSource"
  },
  "targetAttributeName": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "attributeMapping resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


