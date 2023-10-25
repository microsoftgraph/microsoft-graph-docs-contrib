---
title: "external resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# external resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The base container for Microsoft Graph APIs such as the industry data ETL and Microsoft Entra Permissions Management for interacting with external data sources.

## Methods
None.
## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystems|[microsoft.graph.authorizationSystem](../resources/authorizationsystem.md) collection|**TODO: Add Description**|
|connections|[microsoft.graph.externalConnectors.externalConnection](../resources/externalconnectors-externalconnection.md) collection|**TODO: Add Description**|
|industryData|[industryDataRoot](../resources/industrydata-industrydataroot.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.external",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.external"
}
```

