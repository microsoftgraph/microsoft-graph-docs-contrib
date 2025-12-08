---
title: "securityResource resource type"
description: "Represents the resources related to an alert."
ms.localizationpriority: medium
author: "preetikr"
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# securityResource resource type

Namespace: microsoft.graph

Represents the resources related to an alert.

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|resource|String|Name of the resource that is related to current alert. **Required**.|
|resourceType|[securityResourceType](#securityresourcetype-values)|Represents type of security resources related to an alert. The possible values are: `attacked`, `related`.|

### securityResourceType values

|Member|Value|Description|
|-|-|-|
|attacked|1|The resource was attacked in the alert.|
|related|2|The resource is related to the alert, though not directly attacked.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.securityResource"
}-->

```json
{
  "resource": "String",
  "resourceType": "@odata.type: microsoft.graph.securityResourceType"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "securityResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


