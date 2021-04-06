---
title: "Delete includeGroup"
description: "Delete a group from the includedGroups collection of a mobile device management policy."
author: "ravennMSFT"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: apiPageType
---

# Delete includedGroup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a group from the includedGroups collection of a mobile device management policy.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
DELETE /policies/mobileDeviceManagementPolicies/{id}/includedGroups/{id}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

``` http
DELETE https://graph.microsoft.com/beta/policies/mobileDeviceManagementPolicies/{id}/includedGroups/{id}/$ref
```

### Response

``` http
HTTP/1.1 204 No Content
```
