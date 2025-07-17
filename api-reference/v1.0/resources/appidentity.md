---
title: "appIdentity resource type"
description: "Indicates the identity of the application that performed the action or was changed. This resource is called by the directoryAudit API"
ms.localizationpriority: medium
author: "dhanyahk"
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# appIdentity resource type

Namespace: microsoft.graph

Indicates the identity of the application that performed the action or was changed. Includes the application ID, name, and service principal ID and name. This resource is used by the [directoryAudit](../api/directoryaudit-get.md) operation.

## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
|appId|String|Refers to the unique ID representing application in Microsoft Entra ID.|
|displayName|String|Refers to the application name displayed in the Microsoft Entra admin center.|
|servicePrincipalId|String|Refers to the unique ID for the service principal in Microsoft Entra ID.|
|servicePrincipalName|String|Refers to the Service Principal Name is the Application name in the tenant. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.appIdentity"
}-->

```json
{
  "appId": "String",
  "displayName": "String",
  "servicePrincipalId": "String",
  "servicePrincipalName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "appIdentity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
