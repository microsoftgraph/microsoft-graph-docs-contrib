---
title: "List driveExclusionUnits"
description: "Get a list of drive exclusion units associated with a OneDrive for work or school protection policy."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 03/26/2026
---

# List driveExclusionUnits

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [drive exclusion units](../resources/driveexclusionunit.md) associated with a [OneDrive for work or school protection policy](../resources/onedriveforbusinessprotectionpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onedriveforbusinessprotectionpolicy_list_driveexclusionunits" } -->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessprotectionpolicy-list-driveexclusionunits-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveExclusionUnits
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$count`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [driveExclusionUnit](../resources/driveexclusionunit.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessprotectionpolicy_list_driveexclusionunits"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/driveExclusionUnits
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/onedriveforbusinessprotectionpolicy-list-driveexclusionunits-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/onedriveforbusinessprotectionpolicy-list-driveexclusionunits-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/onedriveforbusinessprotectionpolicy-list-driveexclusionunits-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onedriveforbusinessprotectionpolicy-list-driveexclusionunits-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/onedriveforbusinessprotectionpolicy-list-driveexclusionunits-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/onedriveforbusinessprotectionpolicy-list-driveexclusionunits-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/onedriveforbusinessprotectionpolicy-list-driveexclusionunits-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.driveExclusionUnit)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/oneDriveForBusinessProtectionPolicies('845457dc-4bb2-4815-bef3-8628ebd1952e')/driveExclusionUnits",
  "value": [
    {
      "@odata.type": "#microsoft.graph.driveExclusionUnit",
      "id": "23014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "directoryObjectId": "1b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "displayName": "User1",
      "email": "user1@contoso.com",
      "createdDateTime": "2026-02-16T12:15:00Z",
      "lastModifiedDateTime": "2026-02-16T12:15:00Z"
    },
    {
      "@odata.type": "#microsoft.graph.driveExclusionUnit",
      "id": "89014d8c-71fe-4d00-a01a-31850bc5b45d",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "directoryObjectId": "2b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "displayName": "User2",
      "email": "user2@contoso.com",
      "createdDateTime": "2026-02-16T13:20:00Z",
      "lastModifiedDateTime": "2026-02-16T13:20:00Z"
    }
  ]
}
```
