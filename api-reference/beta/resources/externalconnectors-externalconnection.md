---
title: "externalConnection resource type"
description: "A connection is a logical container for your external content in Microsoft Graph"
ms.localizationpriority: medium
author: "snlraju-msft"
ms.subservice: "search"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# externalConnection resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A logical container to add content from an external source into Microsoft Graph.

## Methods

| Method                                                           | Return Type                                   | Description |
|:-----------------------------------------------------------------|:----------------------------------------------|:--|
| [Create externalConnection](../api/externalconnectors-external-post-connections.md) | externalConnection                            | Create a new **externalConnection** by posting to the connections collection. |
| [List externalConnections](../api/externalconnectors-externalconnection-list.md)    | externalConnection collection                 | Get an **externalConnection** object collection. |
| [Get externalConnection](../api/externalconnectors-externalconnection-get.md)       | externalConnection                            | Read properties and relationships of an **externalConnection** object. |
| [Update externalConnection](../api/externalconnectors-externalconnection-update.md) | externalConnection                            | Update an **externalConnection** object. |
| [Delete externalConnection](../api/externalconnectors-externalconnection-delete.md) | None                                          | Delete an **externalConnection** object. |
| [Create schema](../api/externalconnectors-externalconnection-patch-schema.md)        | None *or* [schema](externalconnectors-schema.md)                 | Register connection schema. |
| [Get operation](../api/externalconnectors-connectionoperation-get.md)               | [connectionOperation](externalconnectors-connectionoperation.md) | Get the status of an asynchronous request to create the connection schema. |
| [Create externalItem](../api/externalconnectors-externalconnection-put-items.md)    | [externalItem](externalconnectors-externalitem.md)               | Create a new externalItem by posting to the items collection. |
|[Get connectionQuota](../api/externalconnectors-connectionquota-get.md)|[connectionQuota](../resources/externalconnectors-connectionquota.md)| Retrieve the properties and relationships of a **connectionQuota**. |

## Properties

| Property           | Type                              | Description |
|:--------------------------|:----------------------------------|:------------|
| activitySettings          |[microsoft.graph.externalConnectors.activitySettings](../resources/externalconnectors-activitysettings.md)| Collects configurable settings related to activities involving connector content.|
| configuration             | [microsoft.graph.externalConnectors.configuration](externalconnectors-configuration.md) | Specifies additional application IDs that are allowed to manage the connection and to index content in the connection. Optional. |
| connectorId               | String            | The Teams App ID. Optional.|
| description               | String           | Description of the connection displayed in the Microsoft 365 admin center. Optional. |
| enabledContentExperiences | microsoft.graph.externalConnectors.contentExperienceType collection | The list of content experiences the connection will participate in. Possible values are `search`.|
| id                        | String           | Developer-provided unique ID of the connection within the Microsoft Entra tenant. Must be between 3 and 32 characters in length. Must only contain alphanumeric characters. Cannot begin with `Microsoft` or be one of the following values: `None`, `Directory`, `Exchange`, `ExchangeArchive`, `LinkedIn`, `Mailbox`, `OneDriveBusiness`, `SharePoint`, `Teams`, `Yammer`, `Connectors`, `TaskFabric`, `PowerBI`, `Assistant`, `TopicEngine`, `MSFT_All_Connectors`. Required. |
| ingestedItemsCount        | Int64            |  The number of items ingested into a connection. This value is refreshed every 15 minutes. If the connection state is `draft`, then **ingestedItemsCount** will be `null`. |
| name                      | String           | The display name of the connection to be displayed in the Microsoft 365 admin center. Maximum length of 128 characters. Required. |
| searchSettings            |[microsoft.graph.externalConnectors.searchSettings](../resources/externalconnectors-searchsettings.md)|The settings configuring the search experience for content in this connection, such as the display templates for search results.|
| state                     | microsoft.graph.externalConnectors.connectionState                   | Indicates the current state of the connection. Possible values are `draft`, `ready`, `obsolete`, and `limitExceeded`. Required. |

## Relationships

| Relationship | Type                                                     | Description |
|:-------------|:---------------------------------------------------------|:---|
| groups       | [microsoft.graph.externalConnectors.externalGroup](externalconnectors-externalgroup.md) collection             | Read-only. Nullable. |
| items        | [microsoft.graph.externalConnectors.externalItem](externalconnectors-externalitem.md) collection               | Read-only. Nullable. |
| operations   | [microsoft.graph.externalConnectors.connectionOperation](externalconnectors-connectionoperation.md) collection | Read-only. Nullable. |
| quota        | [microsoft.graph.externalConnectors.connectionQuota](externalconnectors-connectionquota.md)                    | Read-only. Nullable. |
| schema       | [microsoft.graph.externalConnectors.schema](externalconnectors-schema.md)                                      | Read-only. Nullable. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalConnectors.externalConnection",
  "keyProperty": "id"
}-->

``` json
{
  "activitySettings": {"@odata.type": "microsoft.graph.externalConnectors.activitySettings"},
  "configuration": {"@odata.type": "microsoft.graph.externalConnectors.configuration"},
  "connectorId": "String",
  "description": "String",
  "enabledContentExperiences": "[String]",
  "id": "String (identifier)",
  "ingestedItemsCount": "Int64",
  "name": "String",
  "searchSettings": {"@odata.type": "microsoft.graph.externalConnectors.searchSettings"},
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
