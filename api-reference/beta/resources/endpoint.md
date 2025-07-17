---
title: "Endpoint resource type"
description: "Endpoints represent URLs for resources associated with an entity."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-groups"
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.date: 04/03/2024
---

# Endpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Endpoints represent URLs for resources associated with an entity. For example, when a new Microsoft 365 group is created, other resources are also created as part of the Microsoft 365 group. These include things like a group mailbox for conversations and a group OneDrive folder for documents and files. Further information about these Microsoft 365 group resources, including their associated resource URLs can now be read using the _endpoints_ navigation on the group resource-type. This allows applications to understand these resources, and even embed the resource URL experiences in their own experiences.

## Methods

| Method                                           | Return Type                        | Description                                              |
| :----------------------------------------------- | :--------------------------------- | :------------------------------------------------------- |
| [List endpoints](../api/group-list-endpoints.md) | [Endpoint](endpoint.md) collection | Get an endpoint object collection.                       |
| [Get endpoint](../api/endpoint-get.md)           | [Endpoint](endpoint.md)            | Read properties and relationships of an endpoint object. |

## Properties

| Property           | Type   | Description                                                                                                                      |
| :----------------- | :----- | :------------------------------------------------------------------------------------------------------------------------------- |
| capability         | String | Describes the capability that is associated with this resource. (for example, Messages, Conversations, etc.) Not nullable. Read-only.    |
| id                 | String | Unique identifier for the endpoint; Key. Not nullable. Read-only.                                                                |
| providerId         | String | Application id of the publishing underlying service. Not nullable. Read-only.                                                    |
| providerName       | String | Name of the publishing underlying service. Read-only.                                                                            |
| providerResourceId | String | For Microsoft 365 groups, this is set to a well-known name for the resource (for example, Yammer.FeedURL etc.). Not nullable. Read-only. |
| uri                | String | URL of the published resource. Not nullable. Read-only.                                                                          |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.endpoint"
}-->

```json
{
  "capability": "String",
  "id": "String (identifier)",
  "providerId": "String",
  "providerName": "String",
  "providerResourceId": "String",
  "uri": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Endpoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
