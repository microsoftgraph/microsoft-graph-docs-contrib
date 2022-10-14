---
title: "accessPackageAssignment: additionalAccess"
description: "Retrieve a list of accessPackageAssignment objects indicating potential separation of duties conflicts or access to incompatible access packages."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "apiPageType"
---

# accessPackageAssignment: additionalAccess
Namespace: microsoft.graph

In [Azure AD Entitlement Management](../resources/entitlementmanagement-overview.md), retrieve a collection of [accessPackageAssignment](../resources/accesspackageassignment.md) objects that indicate a target user has an assignment to a specified access package and also an assignment to another, potentially incompatible, access package.  This can be used to prepare to configure the incompatible access packages for a specific access package.

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
GET /identityGovernance/entitlementManagement/assignments/additionalAccess(accessPackageId='parameterValue',incompatibleAccessPackageId='parameterValue')
```

## Function parameters
The following table shows the parameters that must be supplied with this function.  The two access package IDs must be distinct.

|Parameter|Type|Description|
|:---|:---|:---|
| accessPackageId | String |  Indicates the ID of an access package for which the caller would like to retrieve the assignments. Required. |
| incompatibleAccessPackageId | String | The specific incompatible access package for which the caller would like to retrieve only those assignments where the user also has an assignment to this incompatible access package. Required. |

## Optional query parameters

This method supports the `$select`, `$filter`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageAssignment](../resources/accesspackageassignment.md) objects in the response body.

When a result set spans multiple pages, Microsoft Graph returns that page with an `@odata.nextLink` property in the response that contains a URL to the next page of results. If that property is present, continue making additional requests with the `@odata.nextLink` URL in each response, until all the results are returned. For more information, see [paging Microsoft Graph data in your app](/graph/paging).

## Examples

The following example gets the access package assignments for users who have assignments to both access packages.

### Request


<!-- {
  "blockType": "request",
  "name": "accesspackageassignment_additionalaccess"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignments/additionalAccess(accessPackageId='2506aef1-3929-4d24-a61e-7c8b83d95e6f',incompatibleAccessPackageId='d5d99728-8c0b-4ede-83d2-cf9b0e8dabfb')?$expand=target
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
            "@odata.type": "#microsoft.graph.accessPackageAssignment",
            "id": "a61f7889-ae61-4e97-a4dc-e4fa525f5b33",
            "target": {
                "id": "ebaf071e-c647-42c6-b86f-fbe3625b4b63",
                "objectId": "cdbdf152-82ce-479c-b5b8-df90f561d5c7",
                "displayName": "user1"
            }
        },
        {
            "@odata.type": "#microsoft.graph.accessPackageAssignment",
            "id": "a7284263-8233-44de-8095-0ee3ff5a1716",
            "target": {
                "id": "9865b0f8-868f-42c6-a49b-3067eb4b2da1",
                "objectId": "79a8f0b6-61dc-41db-b49e-470c278e05b6",
                "displayName": "user2"
            }
        }
  ]
}

```

