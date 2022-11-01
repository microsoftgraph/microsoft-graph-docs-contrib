---
title: "accessPackage: moveToCatalog"
description: "Allows callers to move an access package from one catalog to the another."
author: "fsheik"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---

# accessPackage: moveToCatalog
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](../resources/entitlementmanagement-overview.md), this action moves the [accessPackage](../resources/accesspackage.md) to a specified target [accessPackageCatalog](../resources/accesspackagecatalog.md). The resources in the access package must be present in the target catalog.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| EntitlementManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|EntitlementManagement.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/accessPackages/{accessPackageId}/moveToCatalog
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|catalogId|String|ID of the catalog to which the access package will be moved.|



## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "accesspackagethis.movetocatalog"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/3089f957-4bfe-405d-96c0-9a7ef30c01d6/moveToCatalog
Content-Type: application/json

{
  "catalogId": "3301434b-99bd-46be-923b-d762c30c8e8b"
}
```


### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

