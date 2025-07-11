---
title: "bulkDriverActionResult resource type"
description: "A complex type to represent the result of bulk driver action."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# bulkDriverActionResult resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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