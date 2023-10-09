---
author: "vanshisingh"
description: "Get newly created, updated, or deleted sites without having to perform a full read of the entire collection."
title: "sites: delta"
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
doc_type: apiPageType
---
# sites: delta

This method allows your app to track the creation and deletion of siteCollection, sites, and lists over time.

Your app begins by calling `delta` without any parameters.
The service starts enumerating sites, returning pages of changes to sites and either an `@odata.nextLink` or an `@odata.deltaLink`, as described below.
Your app should continue calling with the `@odata.nextLink` until you see an `@odata.deltaLink` returned.

After you have finished receiving all the changes, you may apply them to your local state.
To check for changes in the future, call `delta` again with the `@odata.deltaLink` from the previous response.

Deleted sites are returned with the [`deleted` facet](../resources/deleted.md).
Resources with this property set should be removed from your local state.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not Supported  |
|Delegated (personal Microsoft account) | Not Supported   |
|Application | Sites.Read.All, Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /sites/delta
```

## Query Parameters

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

If successful, this method returns a `200 OK` response code and a collection of [Site](../resources/site.md) resource in the response body.

In addition to the collection of resources, the response will also include one of the following properties:

| Name                 | Value  | Description                                                                                                                                      |
|:---------------------|:-------|:-------------------------------------------------------------------------------------------------------------------------------------------------|
| **@odata.nextLink**  | url    | A URL to retrieve the next available page of changes, if there are additional changes in the current set.                                        |
| **@odata.deltaLink** | url    | A URL returned instead of **@odata.nextLink** after all current changes have been returned. Used to read the next set of changes in the future.  |

In some cases, the service will return a `410 Gone` response code with an error response that contains one of the following error codes, and a `Location` header containing a new `nextLink` that starts a fresh delta enumeration. This occurs when the service can't provide a list of changes for a given token (for example, if a client tries to reuse an old token after being disconnected for a long time, or if the server state has changed and a new token is required).

After the full enumeration is completed, compare the returned items with your local state and follow the instructions based on the error type.

| Error type                       | Instructions                                                                                                                               |
|:---------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------|
| `resyncChangesApplyDifferences`  | Replace any local items with the versions from the server (including deletes) if you're sure that the service was up to date with your local changes when you last synchronized. Upload any local changes that the server doesn't know about. |
| `resyncChangesUploadDifferences` | Upload any local items that the service did not return, and upload any items that differ from the versions from the server (keep both copies if you're not sure which one is more up-to-date).                                       |

In addition to the resync errors and for more details about how errors are returned, see [Microsoft Graph error responses and resource types][error-response].

## Examples

### Example 1: Initial request

Here is an example of the initial request, how to call this API to establish your local state.

#### Request

The following is an example of the initial request.

<!-- { "blockType": "request", "name": "get_sites_delta_first", "tags": "service.graph" } -->

```http
GET https://graph.microsoft.com/beta/sites/delta
```

#### Response

The following is an example of the response that includes the first page of changes and the **@odata.nextLink** property that indicates that no more items are available in the current set of items. Your app should continue to request the URL value of **@odata.nextLink** until all pages of items have been retrieved.

<!-- { "blockType": "response", "@odata.type": "Collection(microsoft.graph.site)", "truncated": true, "scope": "site.read" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
            "name": "teamSiteA"
        },
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
            "name": "teamSiteB"
        },
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
            "name": "teamSiteC"
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/beta/sites/delta?token=1230919asd190410jlka"
}
```

This response includes the first page of changes, and the **@odata.nextLink** property indicates that there are more resources available than the current set.
Your app should continue to request the URL value of **@odata.nextLink** until all pages of resources have been retrieved.

### Example 2: Last Page Request

The following is an example of a request that shows the last page in a set and how to call this API to update your local state.

#### Request

The following is an example of a request after the initial request.

<!-- { "blockType": "request", "name": "get-sites-delta-last", "tags": "service.graph" }-->

```http
GET https://graph.microsoft.com/v1.0/sites/delta?token=1230919asd190410jlka
```

#### Response

The following is an example of the response.

The final page of items will include the **@odata.deltaLink** property, which provides the URL that can be used later to retrieve changes since the current set of items.

<!-- { "blockType": "response", "truncated": true, "@odata.type": "Collection(microsoft.graph.site)", "scope": "site.read" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
            "name": "teamSiteA",
            "deleted": {
                "state": "deleted"
            },
        },
        {
            "id": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,0271110f-634f-4300-a841-3a8a2e851851",
            "name": "teamSiteB"
        }
    ],
    "@odata.deltaLink": "https://graph.microsoft.com/v1.0/sites/delta?token=1230919asd190410jlka"
}
```

This response indicates that the site named `teamSiteA` was deleted and the site  `teamSiteB` was either added or modified between the initial request and this request to update the local state.

The final page of items will include the **@odata.deltaLink** property, which provides the URL that can be used later to retrieve changes since the current set of resources.

There may be cases when the service can't provide a list of changes for a given token (for example, if a client tries to reuse an old token after being disconnected for a long time, or if server state has changed and a new token is required).
In these cases the service will return an `HTTP 410 Gone` error with an error response containing one of the error codes below, and a `Location` header containing a new nextLink that starts a fresh delta enumeration from scratch.
After finishing the full enumeration, compare the returned resources with your local state and follow these instructions.

| Error Type                       | Instructions                                                                                                                                                                                                                    |
|:---------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `resyncChangesApplyDifferences`  | Replace any local sites, lists or webs with the server's version (including deletes) if you're sure that the service was up to date with your local changes when you last sync'd. Upload any local changes that the server doesn't know about. |
| `resyncChangesUploadDifferences` | Upload any local sites, webs, lists that the service did not return, and upload ones that differ from the server's version (keeping both copies if you're not sure which one is more up-to-date).                                       |

### Example 3: Delta link request

In some scenarios, it may be useful to request the current `deltaLink` value without first enumerating all of the sites, lists, and webs. 

This can be useful if your app only wants to know about changes, and doesn't need to know about existing resources.
To retrieve the latest deltaLink, call `delta` with a query string parameter `?token=latest`.

**Note: If you are trying to maintain a full local representation of the resources, you must use `delta` for the initial enumeration.
Using `delta` is the only way to guarantee that you've read all of the data you need to.**

#### Request

<!-- { "blockType": "request", "name": "get-sites-delta-latest", "scopes": "sites.read", "tags": "service.graph", "target": "action" } -->

```http
GET /sites/delta?token=latest
```

#### Response

<!-- { "blockType": "response", "isEmpty": true, "@odata.type": "Collection(microsoft.graph.site)" } -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "value": [ ],
    "@odata.deltaLink": "https://graph.microsoft.com/v1.0/sites/delta?token=1230919asd190410jlka"
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
  "suppressions": [],
  "tocPath": "Sites/Get delta"
} -->
