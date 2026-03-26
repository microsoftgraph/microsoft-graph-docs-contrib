---
title: "List siteExclusionUnits"
description: "Get a list of site exclusion units associated with a SharePoint protection policy."
author: "vidulaverma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 03/26/2026
---

# List siteExclusionUnits

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [siteExclusionUnit](../resources/siteexclusionunit.md) objects associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointprotectionpolicy_list_siteexclusionunits" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointprotectionpolicy-list-siteexclusionunits-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteExclusionUnits
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [siteExclusionUnit](../resources/siteexclusionunit.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sharepointprotectionpolicy_list_siteexclusionunits"
}
-->
```http
GET https://graph.microsoft.com/beta/solutions/backupRestore/sharePointProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/siteExclusionUnits
```

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.siteExclusionUnit)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/sharePointProtectionPolicies('845457dc-4bb2-4815-bef3-8628ebd1952e')/siteExclusionUnits",
  "value": [
    {
      "@odata.type": "#microsoft.graph.siteExclusionUnit",
      "id": "23014d8c-71fe-4d00-a01a-31850bc5b32c",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "siteId": "contoso.sharepoint.com,da60e844-ba1d-49bc-b4d4-d5e36bae9019,712a596e-90a1-49e3-9b48-bfa80bee8740",
      "siteName": "Marketing",
      "siteWebUrl": "https://contoso.sharepoint.com/Marketing",
      "createdDateTime": "2026-02-16T12:15:00Z",
      "lastModifiedDateTime": "2026-02-16T12:15:00Z"
    },
    {
      "@odata.type": "#microsoft.graph.siteExclusionUnit",
      "id": "89014d8c-71fe-4d00-a01a-31850bc5b45d",
      "policyId": "845457dc-4bb2-4815-bef3-8628ebd1952e",
      "siteId": "contoso.sharepoint.com,fa70e844-ba1d-49bc-b4d4-d5e36bae8765,812a596e-90a1-49e3-9b48-bfa80bee9876",
      "siteName": "Archive",
      "siteWebUrl": "https://contoso.sharepoint.com/Archive",
      "createdDateTime": "2026-02-16T13:20:00Z",
      "lastModifiedDateTime": "2026-02-16T13:20:00Z"
    }
  ]
}
```
