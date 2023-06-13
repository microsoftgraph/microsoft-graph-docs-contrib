---
title: "bulkDriverActionResult resource type"
description: "A complex type to represent the result of bulk driver action."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# bulkDriverActionResult resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A complex type to represent the result of bulk driver action.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|successfulDriverIds|String collection|List of driver Ids where the action is successful.|
|failedDriverIds|String collection|List of driver Ids where the action is failed.|
|notFoundDriverIds|String collection|List of driver Ids that are not found.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.bulkDriverActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bulkDriverActionResult",
  "successfulDriverIds": [
    "String"
  ],
  "failedDriverIds": [
    "String"
  ],
  "notFoundDriverIds": [
    "String"
  ]
}
```
