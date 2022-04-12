---
title: "accessPackageAssignment: additionalAccess"
description: "Retrieve a list of accesspackageassignment objects indicating potential separation of duties conflicts or additional access."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# accessPackageAssignment: additionalAssignments
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD Entitlement Management](../resources/entitlementmanagement-overview.md), retrieve a collection of [accessPackageAssignment](../resources/accesspackageassignment.md) objects that indicate additional access for a target user, based on the incompatible access packages for a specific access package.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|EntitlementManagement.Read.All, EntitlementManagement.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/entitlementManagement/accessPackageAssignments/additionalAccess(accessPackageId=`parameterValue`,incompatibleAccessPackageId=`parameterValue`)
```

## Function parameters
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
| accessPackageId | `string` |  Scope down to assignments of a specific access package. |
| incompatibleAccessPackageId | `string` | Scope down to assignments due to a specific incompatible access package. |

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [accessPackageAssignment](../resources/accesspackageassignment.md) collection in the response body.

When a result set spans multiple pages, Microsoft Graph returns that page with an `@odata.nextLink` property in the response that contains a URL to the next page of results. If that property is present, continue making additional requests with the `@odata.nextLink` URL in each response, until all the results are returned. For more information, see [paging Microsoft Graph data in your app](/graph/paging).

## Examples

The following example gets the additional access package assignments for a target user.

### Request

<!-- {
  "blockType": "request",
  "name": "accesspackageassignment_additionalaccess"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackageAssignments/additionalAccess(accessPackageId='4c6bc7cc-c1f4-450e-8e90-2984244ef0fd',incompatibleAccessPackageId='2fda5e0a-459e-eb11-8d2a-9c7bef3841d6')
```

### Response
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
        {
            "@odata.type": "#microsoft.graph.accessPackageAssignment"
        }
  ]
}

```

