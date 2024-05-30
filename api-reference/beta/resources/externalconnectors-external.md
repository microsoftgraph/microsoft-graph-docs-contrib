---
title: "external resource type"
description: "The base container for Microsoft Graph APIs such as the industry data ETL and Microsoft Entra Permissions Management for interacting with external data sources."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
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
|id|String|Identifier for the object. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystems|[microsoft.graph.authorizationSystem](../resources/authorizationsystem.md) collection|Represents an onboarded AWS account, Azure subscription, or GCP project that Microsoft Entra Permissions Management will collect and analyze permissions and actions on.|

## JSON representation
The following JSON representation shows the resource type.
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

