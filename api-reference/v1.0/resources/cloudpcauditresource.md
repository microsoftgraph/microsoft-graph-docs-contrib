---
title: "cloudPcAuditResource resource type"
description: "Represents the audit resource. This shows the target edited resource entity, with multiple edited properties."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAuditResource resource type

Namespace: microsoft.graph

Represents the audit resource. This shows the target edited resource entity, with multiple edited properties.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the modified resource entity.|
|modifiedProperties|[cloudPcAuditProperty](../resources/cloudpcauditproperty.md) collection|The list of modified properties.|
|resourceId|String|The unique identifier of the modified resource entity.|

## Relationships

None

## JSON Representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAuditResource"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAuditResource",
  "displayName": "String",
  "modifiedProperties": [
    {
      "@odata.type": "microsoft.graph.cloudPcAuditProperty",
      "displayName": "String",
      "oldValue": "String",
      "newValue": "String"
    }
  ],
  "resourceId": "String"
}
```
