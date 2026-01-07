---
title: "policyLocationUrl resource type"
description: "Represents a specific URL as a location for data protection policy scoping."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyLocationUrl resource type

Namespace: microsoft.graph

Represents a specific URL as a location for data protection policy scoping.

Inherits from [policyLocation](../resources/policylocation.md).

## Properties

| Property | Type   | Description                                                    |
| :------- | :----- | :------------------------------------------------------------- |
| value    | String | The actual value representing the location (for example, "https://partner.contoso.com/upload"). Inherited from [policyLocation](../resources/policylocation.md). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyLocationUrl",
  "baseType": "microsoft.graph.policyLocation",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.policyLocationUrl",
  "value": "String" 
}
```
