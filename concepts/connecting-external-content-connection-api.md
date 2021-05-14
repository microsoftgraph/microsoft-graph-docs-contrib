---
title: Connection API
description: Connection API, appInfo and experience settings
author: mecampos
ms.author: mecampos
ms.topic: conceptual #Required; leave this attribute/value as-is.
---

[!INCLUDE [beta-disclaimer](../api-reference/includes/beta-disclaimer.md)]

# Connection Settings API

This topic describes settings and management updates for the v1.0 Connection API.

A connection is a logical container that adds content from an external source into Microsoft Graph. A connection is also a unit of administration in the Microsoft Graph connectors platform. Once you&#39;ve created the connection, you will be able to add items.

Items that are added to the connection must adhere to the Microsoft Graph external item structure, and each item in the connection should have a unique item ID. You use this ID to create, update, or delete the item in Microsoft Graph. A connection allows your registered application to define a schema for items that will be ingested, and also allows your service to add, update, or delete items from the external data source.

## Managing connections

You can create, update and delete connections in Microsoft Graph. For more details on how to do this, see [Create, update, and delete connections in the Microsoft Graph]( [Create, update, and delete connections in the Microsoft Graph](https://review.docs.microsoft.com/en-us/graph/connecting-external-content-manage-connections?branch=pr-en-us-12368)).

## Connection schema before the v1.0 API

```json
{
    "id": "servicenowhr",
    "name": "Contoso ServiceNow connection",
    "description": "ServiceNow KB for Contoso Corp",
    "connectorId": "<scd config ID>",
    "appInfo": {
        "name": "ServiceNow",
        "icon": "https://cdn.microsoft.com/appicons/serviceNow.svg"
    },
    "searchSettings": {
        "resultTypes": []
    },
    "feedSettings": {
        "urlToItemResolvers": []
    },
    "complianceSettings": {
        "resultTypes": []
    }
}
```



## Connection schema on the v1.0 API

```json
{
    "id": "servicenowhr",
    "name": "Contoso ServiceNow connection",
    "description": "ServiceNow KB for Contoso Corp",
    "connectorId": "<scd config ID>",
    "appInfo": {
        "name": "ServiceNow",
        "icon": "https://cdn.microsoft.com/appicons/serviceNow.svg"
    },
    "authorizedAppIds": [],
    "notifications": [],
    "schema": {},
    "searchSettings": {
        "resultTypes": []
    },
    "feedSettings": {
        "urlToItemResolvers": []
    },
    "complianceSettings": {
        "resultTypes": []
    }
}

```

## Types for new fields

| Properties in Setting | Description | Type |
| --- | --- | --- |
| **AppInfo** | App information used while displaying the connection. | MGE.applicationInfo |
| **AuthorizedAppIds** | Applications with permission on this connection. | StringCollection |
| **Notifications** | List of notification info objects. | MGE.notificationInfo |
| **Schema** | The connection schema. | MGE.schema |
| **SearchSettings** | Search settings. | MGE.searchSettings |
| **FeedSettings** | Feed settings. | MGE.feedSettings |
| **ComplianceSettin** | Compliance settings. | MGE.complianceSettings |

_\*MGE = microsoft.graph.externalConnectors_

## Example settings object

```json
{
    "id": "servicenowhr",
    "name": "Contoso ServiceNow connection",
    "description": "ServiceNow KB for Contoso Corp",
    "connectorId": "52a39169-2645-449f-85b3-fb55c439e7a8",
    "appInfo": {
        "name": "Contoso connector",
        "icon": "https://cdn.contoso.com/images/logo"
    },
    "authorizedAppIds": [
        "d310d35d-72ec-47dd-92f2-fb9c40936555"
    ],
    "notifications": [
        {
            "clientId": "0b2fefc7-0e9e-4072-8803-8022e42d072c",
            "endpoint": "https://northwind.com/notification"
        }
    ],
    "schema": {},
    "searchSettings": {
        "resultTypes": [
            {
                "id": "contosoTickets",
                "condition": "severity lt 2",
                "displayTemplate": "{\"type\":\"AdaptiveCard……}",
                "priority": 1
            }
        ]
    },
```

## API

These additional properties can be updated by appliying a PATCH call on /Connections entity.

Eg: PATCH [https://graph.microsoft.com/beta/external/connections(&#39;{connectionId}&#39;)](https://graph.microsoft.com/beta/external/connections(&#39;%7BconnectionId%7D&#39;)/)

```json
PATCH https://graph.microsoft.com/beta/external/connections('{connectionId}')
{
    "appInfo": {
        "name": "Contoso connector",
        "icon": "https://cdn.contoso.com/images/logo"
    },
    "searchSettings": {
        "resultTypes": [
            {
                "id": "contosoTickets",
                "condition": "severity lt 2",
                "displayTemplate": "{\"type\":\"AdaptiveCard……}",
                "priority": 1
            }
        ]
    }
}
```

The call will update appInfo and searchSettings while keeping the other properties as is.

The API add support for a deeper level of property access and update.

PATCH/PUT/GET/DELETE [https://graph.microsoft.com/beta/external/connections(&#39;{connectionId}&#39;)/appInfo](https://graph.microsoft.com/beta/external/connections(&#39;%7BconnectionId%7D&#39;)/appInfo)

PATCH/PUT/GET/DELETE [https://graph.microsoft.com/beta/external/connections(&#39;{connectionId}&#39;)/searchSettings](https://graph.microsoft.com/beta/external/connections(&#39;%7BconnectionId%7D&#39;)/searchSettings)

## Sequence flow

### Before the v1.0 API

Some of the setting elements have a dependency on schema, and the settings cannot be provided if a schema is not available. For example, searchSettings.resultTypes has an adaptive card template needed to render item content. This payload cannot be validated if the schema is not available. Before v10., the sequence of operations will be as follows:

1. Create the schema.
2. Update the connection to add settings or make similar changes.

### On the v1.0 API

Inline POST of settings in Connection object will be supported. A single POST /external/Connections call would create connection, setup schema and populate settings. Since the schema creation is time consuming, connection creation will become an async operation. It will return an operationID in this case that can be used to get the status.

## Get connections for a given connector

GET https://graph.microsoft.com/beta/external/connections?$filter = tolower(connectorId) eq 'cc29e42b-5273-4c34-a5f8-a25edcec077d' 

> [!NOTE]
> Publisher field is STRING, and comparison will be case sensitive. To ignore case, use tolower/toupper for comparison.title Build – Connection
