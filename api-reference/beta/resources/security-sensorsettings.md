---
title: "sensorSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# sensorSettings resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|domainControllerDnsNames|String collection|**TODO: Add Description**|
|isDelayedDeploymentEnabled|Boolean|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|networkAdapters|[microsoft.graph.security.networkAdapter](../resources/security-networkadapter.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.sensorSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.sensorSettings",
  "description": "String",
  "domainControllerDnsNames": [
    "String"
  ],
  "isDelayedDeploymentEnabled": "Boolean"
}
```