---
title: "Restore a recycle bin item by original drive item ID"
description: "Restore recycleBinItem by usingdriveItemId as alternate key."
author: "cindylay"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 12/10/2024
---

# Restore recycleBinItem by original driveItem ID

Namespace: microsoft.graph

Restore a single [recycleBinItem](../resources/recyclebinitem.md) from a [fileStorageContainer](../resources/filestoragecontainer.md) [recycleBin](../resources/recyclebin.md)by using the `driveItemId` as an alternate key. If there's no matching recycleBinItem for the driveItemId, the API returns a 404 (Not Found) response.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_restore_recyclebinitem" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-restore-recyclebinitem-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/recycleBin/items(driveItemId='{driveItemId}')/restore
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Response

If successful, this method returns a 200 OK response code with the id of the singular [recycleBinItem](../resources/recyclebinitem.md) that was restored in the response body.

## Examples

In this example, the `driveItemId` is passed as a function parameter in the request URL. The response returns the corresponding id of the `recycleBinItem` that was restored.

### Request

``` http
POST  POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!LRJHKCBZQU2fLtv8TzUomsz-OP7yGQRNlugra1iGHqRe5fORWrrHTbh8J8O8qPmx/recycleBin/items(driveItemId='01GC3BS4QFPBCZRLJHJVEYPITEHTDBYHBH')/restore
Content-Type: application/json
```

### Response

``` http
HTTP/1.1 200 Ok
Content-Type: application/json
{
  "id": "bf7ea563-b848-4ec8-9155-b2054564cfe4"
}
```
 
 



