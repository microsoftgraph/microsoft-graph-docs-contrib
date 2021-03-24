---
title: "Delete included groups"
description: "Delete groups by posting to the includedGroups collection."
author: "ravennMSFT"
localization_priority: Normal
ms.prod: "mobility-management"
doc_type: apiPageType
---

## Delete group

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete groups by posting to the includedGroups collection.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.all, Policy.ReadWrite.all|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
DELETE /policies/mobilityAppManagementPolicies/{id}/includedGroups/{id}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code and a [group](../resources/group.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_group_from_groups"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/policies/mobilityAppManagementPolicies/{id}/includedGroups/{id}/$ref
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.AAD.MobilityService.group"
}
-->

``` http
HTTP/1.1 204 No Content
```

