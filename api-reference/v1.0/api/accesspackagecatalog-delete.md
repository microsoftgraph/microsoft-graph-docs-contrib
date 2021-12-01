---
title: "Delete accessPackageCatalog"
description: "Delete accessPackageCatalog."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Delete accessPackageCatalog

Namespace: microsoft.graph


Delete an [accessPackageCatalog](../resources/accesspackagecatalog.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer \{token\}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a 200-series response code. It does not return anything in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "delete_accesspackagecatalog"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


