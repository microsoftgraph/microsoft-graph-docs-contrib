---
title: "cloudPcAuditResource resource type"
description: "Represents the audit resource. This shows the target edited resource entity, with multiple edited properties."
author: "ecmadao"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAuditResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the audit resource. This shows the target edited resource entity, with multiple edited properties.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The resource entity display name.|
|modifiedProperties|[cloudPcAuditProperty](../resources/cloudpcauditproperty.md) collection|A list of modified properties.|
|resourceId|String|The ID of the audit resource.|
|resourceType|String|The type of the audit resource.|
|type (deprecated)|String|The type of the audit resource. The **type** property is deprecated and will stop returning data on May 8, 2024. Going forward, use the **resourceType** property.|

## Relationships

None.

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
  "modifiedProperties": [{"@odata.type": "microsoft.graph.cloudPcAuditProperty"}],
  "resourceId": "String",
  "resourceType": "String",
  "type": "String"
}
```
