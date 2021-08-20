---
title: "Delete externalGroupMember"
description: "Delete member of externalGroup "
author: "sacampbe-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# Delete identity
Namespace: microsoft.graph.externalConnectors



Deletes [member](../resources/externalconnectors-identity.md) of an externalGroup[externalGroup](../resources/externalconnectors-externalgroup.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported                               |
| Delegated (personal Microsoft account) | Not supported                               |
| Application                            | ExternalItem.ReadWrite.OwnedBy, ExternalItem.ReadWrite.All                 |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /connections/{connectionsId}/groups/{externalGroupId}/members/{externalGroupMemberId}
```

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request


<!-- {
  "blockType": "request",
  "name": "delete_externalgroupmember"
}
-->

``` http
DELETE https://graph.microsoft.com/v1.0/external/connections/contosohr/groups/31bea3d537902000/members/14m1b9c38qe647f6a
```

<!-- markdownlint-disable MD024 -->
### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
