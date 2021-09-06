---
title: "assignmentFilterSupportedProperty resource type"
description: "Represents the information about the property which is supported in crafting the rule of AssignmentFilter."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# assignmentFilterSupportedProperty resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the information about the property which is supported in crafting the rule of AssignmentFilter.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dataType|String|The data type of the property.|
|isCollection|Boolean|Indicates whether the property is a collection type or not.|
|name|String|Name of the property.|
|propertyRegexConstraint|String|Regex string to do validation on the property value.|
|supportedOperators|[assignmentFilterOperator](../resources/intune-policyset-assignmentfilteroperator.md) collection|List of all supported operators on this property.|
|supportedValues|String collection|List of all supported values for this propery, empty if everything is supported.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.assignmentFilterSupportedProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignmentFilterSupportedProperty",
  "dataType": "String",
  "isCollection": true,
  "name": "String",
  "propertyRegexConstraint": "String",
  "supportedOperators": [
    "String"
  ],
  "supportedValues": [
    "String"
  ]
}
```



