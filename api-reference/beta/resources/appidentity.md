---
title: "appIdentity resource type"
description: "Indicates the identity of the application that performed the action or was changed. This resource is called by the directoryAudit API."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-monitoring-health"
author: "sureshja"
ms.date: 07/23/2024
---

# appIdentity resource type

Namespace: microsoft.graph

Indicates the identity of the application that performed the action or was changed. Includes the IDs and names for the service principal and application. This resource is called by the [directoryAudit](../api/directoryaudit-get.md) API.


## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|appId|String|Refers to the unique identifier representing application ID in the Microsoft Entra ID.|
|displayName|String|Refers to the application name displayed in the Microsoft Entra admin center.|
|servicePrincipalId|String|Refers to the unique identifier indicating service principal ID in Microsoft Entra ID for the corresponding App.|
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
