---
title: "List details"
description: "Get the access drift details from the details navigation property of an accessDriftSummary."
author: "suhanigupta"
ms.date: 10/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List details

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the access drift details from the **details** navigation property of an [accessDriftSummary](../resources/accessdriftsummary.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessdriftsummary_list_details" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessdriftsummary-list-details-permissions.md)]

[!INCLUDE [rbac-access-drift-summary-read](../includes/rbac-for-apis/rbac-access-drift-summary-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/insights/accessDriftSummary/{accessDriftSummary-id}/details
```

## Optional query parameters

This method supports the `$filter`, `$search`, `$top`, `$skip`, `$orderby`, and `$count` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

The `$filter` parameter supports the `isof('microsoft.graph.entraAccessDriftDetail')` expression to return details from the Microsoft Entra drift source.

The `$search` parameter performs a case-insensitive substring search against `identities/principalName` and `accessPackage/displayName`. For example, `$search=conto` matches an identity principal name that contains `contoso.com`.

The `$orderby` parameter supports `createdDateTime`, `driftType`, `microsoft.graph.entraAccessDriftDetail/assignedRole`, and `microsoft.graph.entraAccessDriftDetail/expectedRole`. You can combine multiple properties and specify `asc` or `desc` for each one. The `identities` relationship is collection-valued, so its child properties don't support `$orderby`.

The maximum value for `$top` is `5000`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessDriftDetail](../resources/accessdriftdetail.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_accessdriftdetail"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/insights/accessDriftSummary/v1_e4c2b24ce2c799a6ce199b1988b8fbf880766cdf21a3d288743082c3822b06f2/details?$filter=isof('microsoft.graph.entraAccessDriftDetail')&$search=conto&$orderby=createdDateTime desc,driftType asc
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessDriftDetail)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.entraAccessDriftDetail",
      "id": "39d6711c-56ce-aeb3-8079-4f288e363a5f",
      "resource": {
        "@odata.type": "#microsoft.graph.applicationDriftResourceInfo",
        "catalogName": "Business applications",
        "identifier": "app-xyz-001",
        "displayName": "Salesforce",
        "type": "application",
        "catalogIdentifier": "cat-001"
      },
      "driftSource": "entra",
      "driftType": "unauthorized",
      "createdDateTime": "2026-04-27T03:15:42Z",
      "assignedRole": "User",
      "expectedRole": "None",
      "accessPackage": {
        "@odata.type": "#microsoft.graph.driftAccessPackageInfo",
        "identifier": "pkg-sales-001",
        "displayName": "Salesforce Access"
      },
      "identities": [
        {
          "@odata.type": "#microsoft.graph.entraDriftIdentityInfo",
          "identifier": "user-001",
          "principalName": "user@contoso.com",
          "displayName": "User One",
          "identityType": "user"
        }
      ]
    }
  ]
}
```
