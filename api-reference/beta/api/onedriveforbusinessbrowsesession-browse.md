---
title: "oneDriveForBusinessBrowseSession: browse"
description: "Browse the files and folders within the oneDriveForBusinessBrowseSession."
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# oneDriveForBusinessBrowseSession: browse

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Browse the files and folders within the [oneDriveForBusinessBrowseSession](../resources/onedriveforbusinessbrowsesession.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onedriveforbusinessbrowsesession_browse" } -->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessbrowsesession-browse-permissions.md)]

[!INCLUDE [rbac-backuprestore-browse-granular-apis](../includes/rbac-for-apis/rbac-backuprestore-browse-granular-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/oneDriveForBusinessBrowseSessions/{oneDriveForBusinessBrowseSessionId}/browse
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

To get top browsable locations, in the request body, supply an empty JSON object `{}` for this method to get the list of the top browsable locations.

To browse a specific scope, in the request body, supply a JSON representation of the following parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|browseLocationItemKey|String|The item key of the location that you want to browse. Optional.|
|browseResourceType|[browsableResourceType](../resources/enums.md#browsableresourcetype-values)|The type of the browsable location. The possible values are: `none`, `site`, `documentLibrary`, `folder`, `unknownFutureValue`. Optional.|
|filter|String|The search expression. Optional.|
|optimizedBrowse|Boolean|Indicates whether to use the optimized browse flow to directly retrieve files and folders when the artifact has a single site and single document library. Optional. Returns `409 Conflict` if multiple sites or document libraries exist.|
|orderBy|[browseQueryOrder](../resources/enums.md#browsequeryorder-values)|Specifies the order in which the response is returned. Optional.|

The following table shows examples of possible formats for the **filter** expression. The filter is supported only on the **name** property.

|Property| Operator| Example|
|:---|:---|:---|
| name|`-contains`|`(name -contains 'contoso')`|

## Response

If successful, this function returns a `200 OK` response code and a collection of [browseQueryResponseItem](../resources/browsequeryresponseitem.md) objects in the response body.

When **optimizedBrowse** is `true` but the artifact contains multiple sites or document libraries, this method returns a `409 Conflict` response code. In this case, use the regular browse flow.

## Examples

### Example 1: Get top browsable locations

The following example shows how to get the top browsable locations.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessbrowsesessionthis.browse.empty"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessBrowseSessions/K74iLNw55YTzbgnba0zxZROipFxnManccFpzecIrjuaypwA/browse

{}

```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onedriveforbusinessbrowsesessionthisbrowseempty-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
      "itemKey": "18473961-eedf-4151-94a7-fd8eb4aec0d7,62ff7090-d987-4711-9d5c-74c9452a192f",
      "name": "user0",
      "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com",
      "type": "site"
    }
  ]
}
```

### Example 2: Browse a specific resource

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessbrowsesessionthis.browse.body"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse

{
    "browseLocationItemKey": "f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e",
    "browseResourceType": "site"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onedriveforbusinessbrowsesessionthisbrowsebody-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
    "@odata.nextLink": "https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse?$skiptoken=eyJ0eXBlIjoiRm9sZGVyIiwiZmlsdGVyIjoiIiwiaXRlbWtleSI6ImJiMjgxZjcyLWY3Y2MtNDM3OS1iMjk1LTBjNjEyNTMxMjdhZiw3NzA0MmZjYi03NGUzLTQ2YWEtOGE1My0wNWY5NzM5ZWJkZjQsMDdhNzEyNWEtMTVlMy00MDJkLWJlYjktZWU2NTQwZjdmNWJjLGE3MWUyZWZjLThmNTctNGIzOS1hNGE5LTNhNGU2MmZkMDM3YiIsInNraXB0b2tlbiI6IlVHRm5aV1E5VkZKVlJTWndYMU52Y25SQ1pXaGhkbWx2Y2owd0puQmZTVVE5TVRZNUpsSnZiM1JHYjJ4a1pYSTlKVEptY0dWeWMyOXVZV3dsTW1aMWMyVnlNQ1UxWm1FNE16QmxaR0ZrT1RBMU1EZzBPVzFoYm1selpIWXdOeVUxWm05dWJXbGpjbTl6YjJaMEpUVm1ZMjl0SlRKbVJHOWpkVzFsYm5SekpUSm1ZWEJwIn0",
    "value": [
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,2db4d4a9-7a10-409d-acfb-136101b43ba8",
            "name": "objectdelete-onedriveforbusinessbrowsesessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-onedriveforbusinessbrowsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2594"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,e3cca06d-b45d-4e98-bd16-c57a4563776f",
            "name": "objectdelete-browsesessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-browsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2411"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,cd692efa-0297-4a98-a39b-ec568a118f35",
            "name": "objectdelete-onedriveforbusinessrestoresessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-onedriveforbusinessrestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2605"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,24c84b57-692b-40b3-b0b0-9cb8613b4398",
            "name": "objectdelete-restoresessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-restoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2422"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,b74f9233-27a7-4d49-a723-c9a4ab717d2d",
            "name": "objectdelete-exchangerestoresessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-exchangerestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2484"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,4f20a6c4-c999-4ee8-9552-ca6a7fc46edf",
            "name": "objectdelete-onedriveforbusinessbrowsesessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-onedriveforbusinessbrowsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2493"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,92d28cdf-82b4-4964-b6fa-fd61240acf6c",
            "name": "objectdelete-sharepointrestoresessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-sharepointrestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2504"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,cbd8e3c8-d0da-40a8-8eb8-51699268d6cf",
            "name": "objectenable.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectenable.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2853"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,45cccd01-511c-4705-97b6-8884d2397e3c",
            "name": "objectget.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectget.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2966"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,ef0ebe75-df09-43d0-91b6-705f03e0b006",
            "name": "objectlist-browsesessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectlist-browsesessions.md",
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessbrowsesessionthis.browse.nextlink"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse?$skiptoken=nextFetchToken
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onedriveforbusinessbrowsesessionthisbrowsenextlink-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,2db4d4a9-7a10-409d-acfb-136101b43ba8",
            "name": "objectdelete-onedriveforbusinessbrowsesessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-onedriveforbusinessbrowsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2594"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,e3cca06d-b45d-4e98-bd16-c57a4563776f",
            "name": "objectdelete-browsesessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-browsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2411"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,cd692efa-0297-4a98-a39b-ec568a118f35",
            "name": "objectdelete-onedriveforbusinessrestoresessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-onedriveforbusinessrestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2605"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,24c84b57-692b-40b3-b0b0-9cb8613b4398",
            "name": "objectdelete-restoresessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-restoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2422"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,b74f9233-27a7-4d49-a723-c9a4ab717d2d",
            "name": "objectdelete-exchangerestoresessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-exchangerestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2484"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,4f20a6c4-c999-4ee8-9552-ca6a7fc46edf",
            "name": "objectdelete-onedriveforbusinessbrowsesessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-onedriveforbusinessbrowsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2493"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,92d28cdf-82b4-4964-b6fa-fd61240acf6c",
            "name": "objectdelete-sharepointrestoresessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-sharepointrestoresessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2504"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,cbd8e3c8-d0da-40a8-8eb8-51699268d6cf",
            "name": "objectenable.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectenable.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2853"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,2db4d4a9-7a10-409d-acfb-136101b43ba8",
            "name": "objectdelete-onedriveforbusinessbrowsesessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-onedriveforbusinessbrowsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2594"
        },
        {
            "itemKey": "bb281f72-f7cc-4379-b295-0c61253127af,77042fcb-74e3-46aa-8a53-05f9739ebdf4,07a7125a-15e3-402d-beb9-ee6540f7f5bc,e3cca06d-b45d-4e98-bd16-c57a4563776f",
            "name": "objectdelete-browsesessions.md",
            "webUrl": "https://contoso-my.sharepoint.com/personal/user0_contoso_onmicrosoft_com/Documents/api/objectdelete-browsesessions.md",
            "type": "file",
            "itemsCount": 0,
            "sizeInBytes": "2411"
        },
    ]
}
```

### Example 4: Browse items by using the optimized browse flow

When the browse session targets a single site that contains a single document library, set **optimizedBrowse** to `true` to directly get the files and folders in the artifact without specifying **browseResourceType**.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessbrowsesessionthis.browse.optimized"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse
Content-Type: application/json

{
  "optimizedBrowse": true
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
    "@odata.count": 3,
    "value": [
        {
            "itemKey": "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,f1a2b3c4-5678-90ab-cdef-1234567890ab",
            "name": "Folder1",
            "webUrl": "https://contoso-my.sharepoint.com/personal/alice_contoso_onmicrosoft_com/Shared%20Documents/Folder1",
            "type": "folder"
        },
        {
            "itemKey": "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,a1b2c3d4-5678-90ab-cdef-0987654321ba",
            "name": "Folder 2",
            "webUrl": "https://contoso-my.sharepoint.com/personal/alice_contoso_onmicrosoft_com/Shared%20Documents/Folder2",
            "type": "folder"
        },
        {
            "itemKey": "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,b2c3d4e5-6789-01ab-cdef-9876543210ba",
            "name": "Presentation",
            "webUrl": "https://contoso-my.sharepoint.com/personal/alice_contoso_onmicrosoft_com/Shared%20Documents/Presentation.ppt",
            "type": "file"
        }
    ]
}
```

### Example 5: Search items by using the optimized browse flow with a filter

The following example uses the optimized browse flow together with a **filter** to return only the items whose name contains `Folder`.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessbrowsesessionthis.browse.optimizedfilter"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessBrowseSessions/m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE/browse
Content-Type: application/json

{
  "optimizedBrowse": true,
  "filter": "(name -contains 'Folder')"
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
    "@odata.count": 2,
    "value": [
        {
            "itemKey": "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,a1b2c3d4-5678-90ab-cdef-0987654321ba",
            "name": "Folder1",
            "webUrl": "https://contoso-my.sharepoint.com/personal/alice_contoso_onmicrosoft_com/Shared%20Documents/Folder1",
            "type": "folder"
        },
        {
            "itemKey": "a535851e-9fc6-4eb1-90ab-2955fd9117b5,2a8b7eaf-092a-4561-a25a-998ad2e5142e,38eec3f1-b879-44a6-8ae6-05bd46ed4b3d,b2c3d4e5-6789-01ab-cdef-9876543210ba",
            "name": "FolderFile.txt",
            "webUrl": "https://contoso-my.sharepoint.com/personal/alice_contoso_onmicrosoft_com/Shared%20Documents/Folder1/FolderFile.txt",
            "type": "file"
        }
    ]
}
```
