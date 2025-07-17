---
title: "externalConnection resource type"
description: "A connection is a logical container for your external content in Microsoft Graph"
author: "mecampos"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# externalConnection resource type

Namespace: microsoft.graph.externalConnectors

A logical container to add content from an external source into Microsoft Graph.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create externalConnection](../api/externalconnectors-external-post-connections.md)|[externalConnection](../resources/externalconnectors-externalconnection.md)|Create a new [externalConnection](../resources/externalconnectors-externalconnection.md) object.|
|[List externalConnections](../api/externalconnectors-externalconnection-list.md)|[externalConnection](../resources/externalconnectors-externalconnection.md) collection|Get a list of the [externalConnection](../resources/externalconnectors-externalconnection.md) objects and their properties.|
|[Get externalConnection](../api/externalconnectors-externalconnection-get.md)|[externalConnection](../resources/externalconnectors-externalconnection.md)|Read the properties and relationships of an [externalConnection](../resources/externalconnectors-externalconnection.md) object.|
|[Update externalConnection](../api/externalconnectors-externalconnection-update.md)|[externalConnection](../resources/externalconnectors-externalconnection.md)|Update the properties of an [externalConnection](../resources/externalconnectors-externalconnection.md) object.|
|[Delete externalConnection](../api/externalconnectors-externalconnection-delete.md)|None|Deletes an [externalConnection](../resources/externalconnectors-externalconnection.md) object.|
|[Create schema](../api/externalconnectors-externalconnection-patch-schema.md)|[schema](../resources/externalconnectors-schema.md)|Create a new schema object.|
|[Create externalItem](../api/externalconnectors-externalconnection-put-items.md)|[externalItem](../resources/externalconnectors-externalitem.md)|Create a new externalItem object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
| activitySettings  |[microsoft.graph.externalConnectors.activitySettings](../resources/externalconnectors-activitysettings.md)| Collects configurable settings related to activities involving connector content.|
| configuration     |[microsoft.graph.externalConnectors.configuration](../resources/externalconnectors-configuration.md)|Specifies additional application IDs that are allowed to manage the connection and to index content in the connection. Optional.|
| connectorId       | String | The Teams app ID. Optional.|
| description       |String|Description of the connection displayed in the Microsoft 365 admin center. Optional.|
| id                |String| Developer-provided unique ID of the connection within the Microsoft Entra tenant. Must be between 3 and 32 characters in length. Must only contain alphanumeric characters. Cannot begin with `Microsoft` or be one of the following values: `None`, `Directory`, `Exchange`, `ExchangeArchive`, `LinkedIn`, `Mailbox`, `OneDriveBusiness`, `SharePoint`, `Teams`, `Yammer`, `Connectors`, `TaskFabric`, `PowerBI`, `Assistant`, `TopicEngine`, `MSFT_All_Connectors`. Required. |
| name              |String|The display name of the connection to be displayed in the Microsoft 365 admin center. Maximum length of 128 characters. Required.|
| searchSettings    |[microsoft.graph.externalConnectors.searchSettings](../resources/externalconnectors-searchsettings.md)|The settings configuring the search experience for content in this connection, such as the display templates for search results.|
| state             |microsoft.graph.externalConnectors.connectionState|Indicates the current state of the connection. Possible values are: `draft`, `ready`, `obsolete`, `limitExceeded`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|items|[microsoft.graph.externalConnectors.externalItem](../resources/externalconnectors-externalitem.md) collection|Read-only. Nullable.|
|operations|[microsoft.graph.externalConnectors.connectionOperation](../resources/externalconnectors-connectionoperation.md) collection|Read-only. Nullable.|
|schema|[microsoft.graph.externalConnectors.schema](../resources/externalconnectors-schema.md)|Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.externalConnection",
  "openType": false
}
-->
``` json
{
  "activitySettings": {
    "@odata.type": "microsoft.graph.externalConnectors.activitySettings"
  },
  "configuration": {
    "@odata.type": "microsoft.graph.externalConnectors.configuration"
  },
  "connectorId": "String",
  "description": "String",
  "id": "String (identifier)",
  "name": "String",
  "searchSettings": {
    "@odata.type": "microsoft.graph.externalConnectors.searchSettings"
  },
  "state": "String"
}
```
