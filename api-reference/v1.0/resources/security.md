---
title: "security resource type"
description: "The security resource is the entry point for the Security object model. It returns a singleton security resource. It doesn't contain any usable properties."
ms.localizationpriority: medium
author: "preetikr"
ms.prod: "security"
doc_type: resourcePageType
---

# security resource type

Namespace: microsoft.graph

The security resource is the entry point for the Security object model. It returns a singleton security resource. It doesn't contain any usable properties.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[runHuntingQuery](../api/security-security-runhuntingquery.md)|[microsoft.graph.security.huntingQueryResults](../resources/security-huntingqueryresults.md)|Queries a specified set of event, activity, or entity data supported by Microsoft 365 Defender to proactively look for specific threats in your environment.|


## Properties
None

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|alerts|[alert](alert.md) collection| Read-only. Nullable.|
|alerts_v2 | [microsoft.graph.security.alert](security-alert.md) collection | A collection of alerts in Microsoft 365 Defender.|
|incidents | [microsoft.graph.security.incident](security-incident.md) collection | A collection of incidents in Microsoft 365 Defender, each of which is a set of correlated alerts and associated metadata that reflects the story of an attack.|


## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.security"
}-->

```json
{
}
```

## Example

The **security** resource is available at the root of the graph.

<!--{
  "blockType": "request"
}-->
```http
GET https://graph.microsoft.com/v1.0/security
```

<!--{
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security"
}-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "security resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

