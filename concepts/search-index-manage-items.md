---
title: "Create, update, and delete items added by your application in the Microsoft Search service index"
description: "Learn how to use Microsoft Graph to manage items added by your application to the Microsoft Search service"
localization_priority: Priority
author: "snlraju-msft"
ms.prod: ""
doc_type: conceptualPageType
---

# Create, update, and delete items added by your application in the Microsoft Search service index

Items added by your application to the Microsoft Search service are represented by the [externalItem](/graph/api/resources/externalitem?view=graph-rest-beta) and [externalFile](/graph/api/resources/externalfile?view=graph-rest-beta) resources in Microsoft Graph.

The `externalItem` resource represents a custom type. It should be used when the items you add to the index use a custom schema not represented by the `externalFile` resource. For example, helpdesk tickets or product listings.

The `externalFile` resource represents a file in an external system.

> [!NOTE]
> The schema for `externalFile` cannot be extended.

## Add an item or file

You can add items or files to the index using the [create externalItem API](/graph/api/externalconnection-put-items?view=graph-rest-beta). When you create an item, you assign a unique identifier in the URL.

For example, your application may index helpdesk tickets using the ticket number. If a ticket has the ticket number `SR00145`, the request may look like the following.

```http
PUT /external/connections/contosohelpdesk/items/SR00145
Content-Type: application/json

{
  "title": "WiFi outage in Conference Room A",
  "status": "New",
  "assignee": "meganb@contoso.com"
}
```

## Update an item or file

When an item or file is updated in the external service (helpdesk ticket is reassigned, or a product description is updated), you can update its entry in the index by using the [update externalItem API](/graph/api/externalitem-update?view=graph-rest-beta), using the unique identifier assigned to the item when you created it.

```http
PATCH /external/connections/contosohelpdesk/items/SR00145
Content-Type: application/json

{
  "assignee": "alexw@contoso.com"
}
```

## Delete an item or file

You can remove items or files from the index by using the [delete externalItem API](/graph/api/externalitem-delete?view=graph-rest-beta), using the unique identifier assigned to the item when you created it.

```http
DELETE /external/connections/contosohelpdesk/items/SR00145
```

## Next steps

- [Why integrate with Microsoft Search indexing](search-index-overview.md)
- [Using the indexing API](/graph/api/resources/indexing-api-overview?view=graph-rest-beta)
- [Search for externalItems](search-concept-custom-types.md)
- [Search for externalFiles](search-concept-files.md)
- Download the indexing API Postman collection to try out the API.
- Download the indexing API sample from GitHub.
