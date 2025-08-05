---
title: "Get telephoneNumberLongRunningOperation"
description: "Get status of assign and unassign operations"
author: "pavellatif"
ms.date: 07/23/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get telephoneNumberLongRunningOperation

Namespace: microsoft.graph.teamsAdministration

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation](../resources/teamsadministration-telephonenumberlongrunningoperation.md) object. This method is used to query the status of an assign or unassign number action using Graph API. This link is returned in the Location response header found in assign or unassign operation result.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamsadministration-telephonenumberlongrunningoperation-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamsadministration-telephonenumberlongrunningoperation-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/teams/telephoneNumberManagement/operations/{telephoneNumberLongRunningOperationId}
```

## Optional query parameters

None.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation](../resources/teamsadministration-telephonenumberlongrunningoperation.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_telephonenumberlongrunningoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/operations{'QXNzaWdubWVudHw2Y2E4Yjc0Ni00YzgxLTRhY2EtOTUyNi1jZmNjNGRiYWYyMmI'}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamsAdministration.telephoneNumberLongRunningOperation",
    "id": "QXNzaWdubWVudHw2Y2E4Yjc0Ni00YzgxLTRhY2EtOTUyNi1jZmNjNGRiYWYyMmI",
    "createdDateTime": "2025-02-03T22:03:26Z",
    "status": "succeeded",
    "numbers": [
      {
        "resourceLocation": "https://graph.microsoft.com/beta/admin/teams/telephoneNumberManagement/numberAssignments/N2EyMDUxOTctOGU1OS00ODdkLWI5ZmEtM2ZjMWIxMDhmMWU1fCsxMjA2MTIzNDU2Nw",
        "status": "succeeded"
      }
    ]
  }
}
```
