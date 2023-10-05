---
title: "accessPackageResource: refresh"
description: "Refresh accessPackageResource object from origin system"
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# accessPackageResource: refresh
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](../resources/entitlementmanagement-overview.md), callers can refresh [accesspackageresource](../resources/accesspackageresource.md) details like `displayName`, `description` and `resourceType` for all originSystems. For `AadApplication` originSystem we also update [accessPackageResourceRole](accesspackageresourcerole.md `displayName` and `description`. 

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
| Delegated (work or school account) | EntitlementManagement.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application | EntitlementManagement.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalogId}/accessPackageResources/{accessPackageResourceId}/refresh
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "accesspackageresourcethis.refresh"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageCatalogs/16b6a9de-f519-4bd2-86cb-793808f70230/accessPackageResources/b078b6f9-15c1-423b-864f-994ccf8d6fbf/refresh
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 No Content
```

