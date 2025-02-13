---
title: "provisioningSystem resource type"
description: "Represents the system that a user was provisioned to or from."
ms.localizationpriority: medium
author: "ArvindHarinder1"
ms.subservice: "entra-monitoring-health"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# provisioningSystem resource type

Namespace: microsoft.graph


Represents the system that a user was provisioned to or from. For example, when provisioning a user from Microsoft Entra ID to ServiceNow, the source system is Microsoft Entra ID, and the target system is ServiceNow.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|Name of the system that a user was provisioned to or from.|
|details|[detailsInfo](detailsinfo.md)|Details of the system.|
|id|String|Identifier of the system that a user was provisioned to or from.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningSystem",
  "baseType": null
}-->

```json
{
  "details": {
    "@odata.type": "microsoft.graph.detailsInfo"
  },
  "displayName": "String",
  "id": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "provisioningSystem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
