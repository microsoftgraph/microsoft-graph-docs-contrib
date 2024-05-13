---
title: "connector resource type"
description: "Represents an Application Proxy connector."
author: "dhruvinrshah"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# connector resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Application Proxy connector. Connectors are lightweight agents that sit on-premises and facilitate the outbound connection to the [Microsoft Entra application proxy](/azure/active-directory/app-proxy/what-is-application-proxy) service. Each connector is part of a [connectorGroup](connectorgroup.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List connectors](../api/connector-list.md) | [connector](connector.md) collection | Retrieve a list of connector objects. | 
| [Get connector](../api/connector-get.md) | [connector](connector.md) | Read the properties and relationships of a connector object. |
| [List memberOf](../api/connector-list-memberof.md) | [connectorGroup](connectorgroup.md) collection | List the **connectorGroup** object collection the connector is a member of. |
| [Add connector to connectorGroup](../api/connector-post-memberof.md)| [connectorGroup](connectorgroup.md) | Add a connector to a **connectorGroup**. |


## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|externalIp|String| The external IP address as detected by the connector server. Read-only. |
|id|String| The unique identifier of the connector. Read-only. |
|machineName|String| The name of the computer on which the connector is installed and runs on. |
|status|connectorStatus| Indicates the status of the connector. The possible values are: `active`, `inactive`. Read-only. |
|version|String|The version of the connector.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|memberOf|[connectorGroup](connectorgroup.md) collection| The **connectorGroup** that the connector is a member of. Read-only. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.connector"
}-->

```json
{
  "externalIp": "String",
  "id": "String (identifier)",
  "machineName": "String",
  "status": "String",
  "version": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "connector resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
