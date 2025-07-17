---
title: "cloudAppSecurityState resource type"
description: "Contains stateful information about the cloud application (destinationServiceName, destinationServiceIp)."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: security
author: "preetikr"
ms.date: 03/21/2024
---

# cloudAppSecurityState resource type

Namespace: microsoft.graph

Contains stateful information about the cloud application (destinationServiceName, destinationServiceIp).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|destinationServiceIp|String|Destination IP Address of the connection to the cloud application/service.|
|destinationServiceName|String|Cloud application/service name (for example "Salesforce", "DropBox", etc.).|
|riskScore|String|Provider-generated/calculated risk score of the Cloud Application/Service. Recommended value range of 0-1, which equates to a percentage.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.cloudAppSecurityState"
}-->

```json
{
  "destinationServiceIp": "String",
  "destinationServiceName": "String",
  "riskScore": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "cloudAppSecurityState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


