---
title: "sharePointBrowseSession: browse"
description: "Browse the files and folders within the sharepointBrowseSession"
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# sharePointBrowseSession: browse

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Browse the files and folders within the [sharePointBrowseSession](../resources/sharepointbrowsesession.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointbrowsesession-browse-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointbrowsesession-browse-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/sharePointBrowseSessions/{sharePointBrowseSessionId}/browse
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Users should make a request with an empty body to get the list of the top browsable locations.

In the request body, supply a JSON representation of the following parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|browseLocationItemKey|String|The item key of the location that you want to browse. Optional.|
|browseResourceType|[browsableResourceType](../resources/enums.md#browsableresourcetype-values)|The type of the browsable location. Optional. The possible values are `none`, `site`, `documentLibrary`, `folder`, and `unknownFutureValue`. Optional.|
|filter|String|Contains the search expression. Optional.|
|orderBy|[browseQueryOrder](../resources/enums.md#browsequeryorder-values)|Specifies the order by which response should be ordered. Optional.|

The following table shows examples of possible formats for the filter expression. The filter is supported only on the `name` property.

|Property| Operator| Example|
|:---|:---|:---|
| `name` | `-contains` | `(name -contains 'contoso')` |

## Response

If successful, this function returns a `200 OK` response code and a [browseQueryResponseItem](../resources/browsequeryresponseitem.md) collection in the response body.

## Examples

### Example 1: Get top browsable locations

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sharepointbrowsesessionthis.browse.empty"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/sharePointBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.browseQueryResponseItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.browseQueryResponseItem)",
    "@odata.count": 1,
    "value": [
        {
            "itemKey": "f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e",
            "name": "Communication site",
            "webUrl": "https://contoso.sharepoint.com",
            "type": "site"
        }
    ]
}
```

### Example 2: Browse a specify resource

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sharepointbrowsesessionthis.browse.body"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/sharePointBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse
Content-Type: application/json

{
    "browseLocationItemKey": "f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e",
    "browseResourceType": "site"
}

```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.browseQueryResponseItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.browseQueryResponseItem)",
    "@odata.count": 10,
    "@odata.nextLink": "https://graph.microsoft.com/beta/solutions/backupRestore/sharePointBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse?$skiptoken=eyJ0eXBlIjoiRm9sZGVyIiwiZmlsdGVyIjoiIiwiaXRlbWtleSI6ImJiMjgxZjcyLWY3Y2MtNDM3OS1iMjk1LTBjNjEyNTMxMjdhZiw3NzA0MmZjYi03NGUzLTQ2YWEtOGE1My0wNWY5NzM5ZWJkZjQsMDdhNzEyNWEtMTVlMy00MDJkLWJlYjktZWU2NTQwZjdmNWJjLGE3MWUyZWZjLThmNTctNGIzOS1hNGE5LTNhNGU2MmZkMDM3YiIsInNraXB0b2tlbiI6IlVHRm5aV1E5VkZKVlJTWndYMU52Y25SQ1pXaGhkbWx2Y2owd0puQmZTVVE5TVRZNUpsSnZiM1JHYjJ4a1pYSTlKVEptY0dWeWMyOXVZV3dsTW1aMWMyVnlNQ1UxWm1FNE16QmxaR0ZrT1RBMU1EZzBPVzFoYm1selpIWXdOeVUxWm05dWJXbGpjbTl6YjJaMEpUVm1ZMjl0SlRKbVJHOWpkVzFsYm5SekpUSm1ZWEJwIn0",
    "value": [
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,2db4d4a9-7a10-409d-acfb-136101b43ba8",
            "name": "objectdelete-sharepointbrowsesessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-sharepointbrowsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2594"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,e3cca06d-b45d-4e98-bd16-c57a4563776f",
            "name": "objectdelete-browsesessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-browsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2411"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,cd692efa-0297-4a98-a39b-ec568a118f35",
            "name": "objectdelete-sharepointrestoresessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-sharepointrestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2605"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,24c84b57-692b-40b3-b0b0-9cb8613b4398",
            "name": "objectdelete-restoresessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-restoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2422"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,b74f9233-27a7-4d49-a723-c9a4ab717d2d",
            "name": "objectdelete-exchangerestoresessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-exchangerestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2484"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,4f20a6c4-c999-4ee8-9552-ca6a7fc46edf",
            "name": "objectdelete-sharepointbrowsesessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-sharepointbrowsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2493"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,92d28cdf-82b4-4964-b6fa-fd61240acf6c",
            "name": "objectdelete-sharepointrestoresessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-sharepointrestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2504"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,cbd8e3c8-d0da-40a8-8eb8-51699268d6cf",
            "name": "objectenable.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectenable.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2853"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,45cccd01-511c-4705-97b6-8884d2397e3c",
            "name": "objectget.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectget.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2966"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,ef0ebe75-df09-43d0-91b6-705f03e0b006",
            "name": "objectlist-browsesessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectlist-browsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "3254"
        }
    ]
}
```

### Example 3: Browse items with nextLink.

We get the nextLink in the response of first POST api call as shown above and subsequent pages are fetched using the nextlink.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "sharepointbrowsesessionthis.browse.nextlink"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/sharePointBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse?$skiptoken=nextFetchToken
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.browseQueryResponseItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.browseQueryResponseItem)",
    "@odata.count": 10,
    "value": [
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,b74f9233-27a7-4d49-a723-c9a4ab717d2d",
            "name": "objectdelete-exchangerestoresessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-exchangerestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2484"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,4f20a6c4-c999-4ee8-9552-ca6a7fc46edf",
            "name": "objectdelete-sharepointbrowsesessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-sharepointbrowsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2493"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,92d28cdf-82b4-4964-b6fa-fd61240acf6c",
            "name": "objectdelete-sharepointrestoresessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-sharepointrestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2504"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,cbd8e3c8-d0da-40a8-8eb8-51699268d6cf",
            "name": "objectenable.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectenable.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2853"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,e3cca06d-b45d-4e98-bd16-c57a4563776f",
            "name": "objectdelete-browsesessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-browsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2411"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,cd692efa-0297-4a98-a39b-ec568a118f35",
            "name": "objectdelete-sharepointrestoresessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-sharepointrestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2605"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,24c84b57-692b-40b3-b0b0-9cb8613b4398",
            "name": "objectdelete-restoresessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-restoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2422"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,b74f9233-27a7-4d49-a723-c9a4ab717d2d",
            "name": "objectdelete-exchangerestoresessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-exchangerestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2484"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,4f20a6c4-c999-4ee8-9552-ca6a7fc46edf",
            "name": "objectdelete-sharepointbrowsesessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-sharepointbrowsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2493"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,92d28cdf-82b4-4964-b6fa-fd61240acf6c",
            "name": "objectdelete-sharepointrestoresessions.md",
            "webUrl": "https://contoso.sharepoint.com/Shared Documents/api/objectdelete-sharepointrestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2504"
        }
    ]
}
```
