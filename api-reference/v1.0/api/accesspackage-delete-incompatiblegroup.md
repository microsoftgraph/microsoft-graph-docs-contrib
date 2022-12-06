---
title: "Remove group from incompatibleGroups"
description: "Remove a link that indicates a group is incompatible with a specified access package."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# Remove group from incompatibleGroups

Namespace: microsoft.graph

Remove a [group](../resources/group.md) from the list of groups that have been marked as incompatible on an [accessPackage](../resources/accesspackage.md).  

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /identityGovernance/entitlementManagement/accessPackages/{id}/incompatibleGroups/{id}/$ref
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "remove_incompatiblegroup_from_accesspackage"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/73eb2497-3b88-4c0a-8bb3-68ba8162beff/incompatibleGroups/c0a74b4d-2694-4d5d-a964-1bee4ff0aaf2/$ref
```



### Response

The following is an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Remove incompatibleGroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


