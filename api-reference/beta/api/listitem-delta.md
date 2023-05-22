---
author: "learafa"
description: "Get newly created, updated, or deleted list items without having to perform a full read of the entire items collection."
title: "lisItem: delta"
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
doc_type: apiPageType
---
# listItem: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get newly created, updated, or deleted [list items](../resources/listitem.md) without having to perform a full read of the entire items collection.

Your app begins by calling `delta` without any parameters.
The service starts enumerating the hierarchy of the list, returning pages of items, and either an **@odata.nextLink** or an **@odata.deltaLink**.
Your app should continue calling with the **@odata.nextLink** until you see an **@odata.deltaLink** returned.

After you have received all the changes, you might apply them to your local state.
To check for changes in the future, call `delta` again with the **@odata.deltaLink** from the previous response.

The delta feed shows the latest state for each item, not each change. If an item were renamed twice, it will only show up once, with its latest name.
The same item might appear more than once in a delta feed, for various reasons. You should use the last occurrence you see.

Deleted items are returned with the [deleted facet](../resources/deleted.md). Deleted indicates that the item is deleted and cannot be restored.
Items with this property should be removed from your local state.

> **Note:** You should only delete a folder locally if it's empty after syncing all the changes.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Sites.Read.All, Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/{siteId}/lists/{listId}/items/delta
```

## Query parameters

In the request URL, you can include the following optional query parameter.

| Parameter    | Type   | Description                                                                                                                          |
|:-------------|:-------|:-------------------------------------------------------------------------------------------------------------------------------------|
| token        | string | Optional. If unspecified, enumerates the current state of the hierarchy. If `latest`, returns an empty response with the latest delta token. If a previous delta token, returns a new state since that token.|

This method supports the `$select`, `$expand`, and `$top` [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Header       |Value                    |
|-------------|-------------------------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [listItem](../resources/listitem.md) objects in the response body.

In addition to a collection of **listItem** objects, the response will also include one of the following properties.

| Name                 | Value  | Description                                                                                                                                      |
|:---------------------|:-------|:-------------------------------------------------------------------------------------------------------------------------------------------------|
| **@odata.nextLink**  | URL    | A URL to retrieve the next available page of changes, if there are additional changes in the current set.                                        |
| **@odata.deltaLink** | URL    | A URL returned instead of **@odata.nextLink** after all current changes have been returned. Used to read the next set of changes in the future.  |

In some cases, the service will return a `410 Gone` response code with an error response that contains one of the following error codes, and a `Location` header containing a new `nextLink` that starts a fresh delta enumeration. This occurs when the service can't provide a list of changes for a given token (for example, if a client tries to reuse an old token after being disconnected for a long time, or if the server state has changed and a new token is required).

After the full enumeration is completed, compare the returned items with your local state and follow the instructions based on the error type.

| Error type                       | Instructions                                                                                                                               |
|:---------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------|
| `resyncChangesApplyDifferences`  | Replace any local items with the versions from the server (including deletes) if you're sure that the service was up to date with your local changes when you last synchronized. Upload any local changes that the server doesn't know about. |
| `resyncChangesUploadDifferences` | Upload any local items that the service did not return, and upload any items that differ from the versions from the server (keep both copies if you're not sure which one is more up-to-date).                                       |

In addition to the resync errors and for more details about how errors are returned, see [Microsoft Graph error responses and resource types][error-response].

## Examples

### Example 1: Initial request

The following is an example of the initial request that shows how to call this API to establish your local state.

#### Request

The following is an example of the initial request.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get_listItem_delta_first", "sampleKeys": ["contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE", "22e03ef3-6ef4-424d-a1d3-92a337807c30"] } -->

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE/lists/22e03ef3-6ef4-424d-a1d3-92a337807c30/items/delta
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-listitem-delta-first-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-listitem-delta-first-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-listitem-delta-first-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-listitem-delta-first-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-listitem-delta-first-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response that includes the first page of changes and the **@odata.nextLink** property that indicates that no more items are available in the current set of items. Your app should continue to request the URL value of **@odata.nextLink** until all pages of items have been retrieved.

<!-- { "blockType": "response", "name": "get_listItem_delta_first", "@odata.type": "microsoft.graph.listItem", "isCollection": true, "truncated": true, "scope": "site.read" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "createdDateTime": "2020-06-02T22:46:58Z",
            "eTag": "\"{12AD05BB-59B8-43AA-9456-77C44E9BC066},756\"",
            "id": "1",
            "lastModifiedDateTime": "2021-10-14T23:27:27Z",
            "webUrl": "http://contoso.sharepoint.com/Shared%20Documents/TestFolder",
            "createdBy": {
                "user": {
                    "displayName": "John doe",
                }
            },
            "parentReference": {
                "id": "1",
                "path": "Shared%20Documents",
                "siteId": "12AD05BB-59B8-43AA-9456-77C44E9BC066"
            },
            "contentType": {
                "id": "0x00123456789abc",
                "name": "Folder"
            }
        },
        {
            "createdDateTime": "2020-06-02T22:46:58Z",
            "eTag": "\"{12AD05BB-59B8-43AA-9456-77C44E9BC067},756\"",
            "id": "2",
            "lastModifiedDateTime": "2021-10-14T23:27:27Z",
            "webUrl": "http://contoso.sharepoint.com/Shared%20Documents/TestItemA.txt",
            "createdBy": {
                "user": {
                    "displayName": "John doe",
                }
            },
            "parentReference": {
                "id": "2",
                "path": "Shared%20Documents",
                "siteId": "12AD05BB-59B8-43AA-9456-77C44E9BC066"
            },
            "contentType": {
                "id": "0x00123456789abc",
                "name": "Document"
            }
        },
        {
            "createdDateTime": "2020-06-02T22:46:58Z",
            "eTag": "\"{12AD05BB-59B8-43AA-9456-77C44E9BC068},756\"",
            "id": "3",
            "lastModifiedDateTime": "2021-10-14T23:27:27Z",
            "webUrl": "http://contoso.sharepoint.com/Shared%20Documents/TestItemB.txt",
            "createdBy": {
                "user": {
                    "displayName": "John doe",
                }
            },
            "parentReference": {
                "id": "3",
                "path": "Shared%20Documents",
                "siteId": "12AD05BB-59B8-43AA-9456-77C44E9BC066"
            },
            "contentType": {
                "id": "0x00123456789abc",
                "name": "Document"
            }
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/beta/sites/contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE/lists/22e03ef3-6ef4-424d-a1d3-92a337807c30/items/delta?token=1230919asd190410jlka"
}
```

### Example 2: Last page request

The following is an example of a request that shows the last page in a set and how to call this API to update your local state.

#### Request

The following is an example of a request after the initial request.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-listItem-delta-last", "sampleKeys": ["contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE","22e03ef3-6ef4-424d-a1d3-92a337807c30"] }-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE/lists/22e03ef3-6ef4-424d-a1d3-92a337807c30/items/delta?token=1230919asd190410jlka
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-listitem-delta-last-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-listitem-delta-last-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-listitem-delta-last-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-listitem-delta-last-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-listitem-delta-last-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response that indicates that the item named `TestItemB.txt` was deleted and the item `TestFolder` was either added or modified between the initial request and this request to update the local state.

The final page of items will include the **@odata.deltaLink** property, which provides the URL that can be used later to retrieve changes since the current set of items.


<!-- { "blockType": "response", "name": "get-listItem-delta-last", "truncated": true, "@odata.type": "microsoft.graph.listItem", "isCollection": true,  "scope": "site.read" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
       {
            "createdDateTime": "2020-06-02T22:46:58Z",
            "eTag": "\"{12AD05BB-59B8-43AA-9456-77C44E9BC066},756\"",
            "id": "1",
            "lastModifiedDateTime": "2016-03-21T20:01:37Z",
            "webUrl": "http://contoso.sharepoint.com/Shared%20Documents/TestFolder",
            "createdBy": {
                "user": {
                    "displayName": "John doe",
                }
            },
            "parentReference": {
                "id": "1",
                "path": "Shared%20Documents",
                "siteId": "12AD05BB-59B8-43AA-9456-77C44E9BC066"
            },
            "contentType": {
                "id": "0x00123456789abc",
                "name": "Folder"
            }
        },
        {
            "id": "3",
            "parentReference": {
                "siteId": "12AD05BB-59B8-43AA-9456-77C44E9BC066"
            },
            "contentType": {
                "id": "0x00123456789abc",
                "name": "Document"
            },
            "deleted": {"state": "deleted"}
        }
    ],
    "@odata.deltaLink": "https://graph.microsoft.com/beta/sites/contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE/lists/22e03ef3-6ef4-424d-a1d3-92a337807c30/items/delta?token=1230919asd190410jlka"
}
```

### Example 3: Delta link request

In some scenarios, it might be useful to request the current `deltaLink` value without first enumerating all of the items in the list already. This can be useful if your app only wants to know about changes and doesn't need to know about existing items.
To retrieve the latest `deltaLink`, call `delta` with the query string parameter `?token=latest`.

#### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "get-delta-latest_datalink_tokenislatest", "scope": "sites.read", "target": "action", "sampleKeys": ["contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE","22e03ef3-6ef4-424d-a1d3-92a337807c30"] } -->

```msgraph-interactive
GET /sites/contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE/lists/22e03ef3-6ef4-424d-a1d3-92a337807c30/items/delta?token=latest
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-delta-latest-datalink-tokenislatest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-delta-latest-datalink-tokenislatest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-delta-latest-datalink-tokenislatest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-delta-latest-datalink-tokenislatest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-delta-latest-datalink-tokenislatest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

<!-- { "blockType": "response", "name": "get-delta-latest_datalink_tokenislatest", "isEmpty": true, "@odata.type": "microsoft.graph.listItem", "isCollection": true } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [ ],
    "@odata.deltaLink": "https://graph.microsoft.com/beta/sites/contoso.sharepoint.com,2C712604-1370-44E7-A1F5-426573FDA80A,2D2244C3-251A-49EA-93A8-39E1C3A060FE/lists/22e03ef3-6ef4-424d-a1d3-92a337807c30/items/delta?token=1230919asd190410jlka"
}
```

## See also
[Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview)
[Best practices for discovering files and detecting changes at scale](/onedrive/developer/rest-api/concepts/scan-guidance)

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Sync changes from the service to your client state.",
  "keywords": "sync,delta,changes,$delta",
  "section": "documentation",
  "tocPath": "ListItem/Get delta"
} -->
