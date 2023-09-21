---
author: vanshisingh
ms.date: 02/08/2023
title: Get recycleBinItem 
description: Retrieve the list of recycleBinItem
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
doc_type: apiPageType
---
# Get recycleBinItem

Retrieve the list of [recycleBinItem](../resources/recyclebinitem.md) resources under the specified site or storageContainer.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions.

|Permission type                       | Permissions (from least to most privileged)|
|:-------------------------------------|:-----------------------------------------|
|Delegated (work or school account)    | Files.Read, Files.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All  |
|Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All  |
|Application                           | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All  |


<!-- {
"blockType": "ignored",
}-->

## HTTP request

``` http
GET /sites/{siteId}/recycleBin/items
```

## Request headers

|Name          |Description              |
|:-------------|:------------------------|
|Authorization |Bearer {token}. Required.|

## Request Body

Do not supply a request body for this method

## Response

If successful, this method returns a `200 OK` response code and returns a collection of [microsoft.graph.recycleBinItem](../resources/recyclebinitem.md) in the response body.

## Examples

The following example requests the list of recycleBin items under a specific site.

### Request
<!-- {
"blockType": "ignored"
}-->

``` http
GET https://graph.microsoft.com/v1.0/sites/contoso.sharepoint.com,48f1898f-77d9-4a1b-bddc-1f49bb6dc134,7206fc09-e4af-48b3-8730-ed7321396d7a/recycleBin/items
```

<!-- {
"blockType": "ignored"
}-->

### Response

``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
    "id": "825e764f-c118-438f-b5c4-b8fbe60ab569",
    "name": "file1.txt",
    "size": 469,
    "deletedDateTime": "2023-03-27T12:06:59Z",
    "deletedFromLocation": "Shared Documents/folder1"
}
```


<!-- {
"type": "#page.annotation",
"section": "documentation"
}-->
