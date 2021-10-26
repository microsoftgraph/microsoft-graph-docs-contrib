---
title: "externalConnection resource type"
description: "A connection is a logical container for your external content in Microsoft Graph"
ms.localizationpriority: medium
author: "snlraju-msft"
ms.prod: "search"
doc_type: "resourcePageType"
---

# externalConnection resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A logical container to add content from an external source into Microsoft Graph.

## Methods

| Method                                                           | Return Type                                   | Description |
|:-----------------------------------------------------------------|:----------------------------------------------|:--|
| [Create externalConnection](../api/externalconnectors-external-post-connections.md) | externalConnection                            | Create a new externalConnection by posting to the connections collection. |
| [List externalConnections](../api/externalconnectors-externalconnection-list.md)    | externalConnection collection                 | Get a externalConnection object collection. |
| [Get externalConnection](../api/externalconnectors-externalconnection-get.md)       | externalConnection                            | Read properties and relationships of a externalConnection object. |
| [Update externalConnection](../api/externalconnectors-externalconnection-update.md) | externalConnection                            | Update a externalConnection object. |
| [Delete externalConnection](../api/externalconnectors-externalconnection-delete.md) | None                                          | Delete a externalConnection object. |
| [Create schema](../api/externalconnectors-externalconnection-post-schema.md)        | None *or* [schema](externalconnectors-schema.md)                 | Register connection schema. |
| [Get operation](../api/externalconnectors-connectionoperation-get.md)               | [connectionOperation](externalconnectors-connectionoperation.md) | Get the status of an asynchronous request to create the connection schema. |
| [Create externalItem](../api/externalconnectors-externalconnection-put-items.md)    | [externalItem](externalconnectors-externalitem.md)               | Create a new externalItem by posting to the items collection. |

## Properties

| Property      | Type                              | Description |
|:--------------|:----------------------------------|:------------|
| configuration | [microsoft.graph.externalConnectors.configuration](externalconnectors-configuration.md) | Specifies additional application IDs that are allowed to manage the connection and to index content in the connection. Optional. |
| description   | String                            | Description of the connection displayed in the Microsoft 365 admin center. Optional. |
| id            | String                            | Developer-provided unique ID of the connection within the Azure Active Directory tenant. Must be between 3 and 32 characters in length. Must only contain alphanumeric characters. Cannot begin with `Microsoft` or be one of the following values: `None`, `Directory`, `Exchange`, `ExchangeArchive`, `LinkedIn`, `Mailbox`, `OneDriveBusiness`, `SharePoint`, `Teams`, `Yammer`, `Connectors`, `TaskFabric`, `PowerBI`, `Assistant`, `TopicEngine`, `MSFT_All_Connectors`. Required. |
| name          | String                            | The display name of the connection to be displayed in the Microsoft 365 admin center. Maximum length of 128 characters. Required. |
| state         | microsoft.graph.externalConnectors.connectionState                   | Indicates the current state of the connection. Possible values are `draft`, `ready`, `obsolete`, and `limitExceeded`. Required. |

## Relationships

| Relationship | Type                                                     | Description |
|:-------------|:---------------------------------------------------------|:---|
| items        | [microsoft.graph.externalConnectors.externalItem](externalconnectors-externalitem.md) collection               | Read-only. Nullable. |
| operations   | [microsoft.graph.externalConnectors.connectionOperation](externalconnectors-connectionoperation.md) collection | Read-only. Nullable. |
| schema       | [microsoft.graph.externalConnectors.schema](externalconnectors-schema.md)                                      | Read-only. Nullable. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalConnectors.externalConnection",
  "keyProperty": "id"
}-->

```json
{
  "description": "String",
  "id": "String (identifier)",
  "name": "String",
  "state": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "connection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
