---
title: "Get accessDriftSummary"
description: "Read the properties and relationships of an accessDriftSummary object."
author: "suhanigupta"
ms.date: 10/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Get accessDriftSummary

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [accessDriftSummary](../resources/accessdriftsummary.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accessdriftsummary_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/accessdriftsummary-get-permissions.md)]

[!INCLUDE [rbac-access-drift-summary-read](../includes/rbac-for-apis/rbac-access-drift-summary-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/insights/accessDriftSummary/{accessDriftSummary-id}
```

## Optional query parameters

This method supports the `$expand` OData query parameter with the `details` value. For general information, see [OData query parameters](/graph/query-parameters).

When you use `$expand=details`, the response includes up to five access drift details. If more details are available, the response includes a `details@odata.nextLink` property that identifies the contained details collection.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [accessDriftSummary](../resources/accessdriftsummary.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_accessdriftsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/insights/accessDriftSummary/v1_e4c2b24ce2c799a6ce199b1988b8fbf880766cdf21a3d288743082c3822b06f2
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessDriftSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.accessDriftSummary",
  "id": "v1_e4c2b24ce2c799a6ce199b1988b8fbf880766cdf21a3d288743082c3822b06f2",
  "resource": {
    "@odata.type": "#microsoft.graph.applicationDriftResourceInfo",
    "catalogName": "Business applications",
    "identifier": "app-xyz-001",
    "displayName": "Salesforce",
    "type": "application",
    "catalogIdentifier": "cat-001"
  },
  "driftSource": "entra",
  "driftCounts": {
    "@odata.type": "#microsoft.graph.driftCounts",
    "total": 19,
    "unauthorized": 12,
    "missing": 7
  },
  "createdDateTime": "2026-04-27T03:15:42Z"
}
```
