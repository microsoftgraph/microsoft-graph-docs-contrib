---
title: "List accessDriftSummary"
description: "Get a list of the accessDriftSummary objects and their properties."
author: "suhanigupta"
ms.date: 10/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# List accessDriftSummary

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [accessDriftSummary](../resources/accessdriftsummary.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "accessdriftsummary-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/accessdriftsummary-list-permissions.md)]

[!INCLUDE [rbac-access-drift-summary-read](../includes/rbac-for-apis/rbac-access-drift-summary-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/insights/accessDriftSummary
```

## Optional query parameters

This method supports the `$filter`, `$search`, `$top`, `$skip`, `$orderby`, `$count`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

Every `$filter` expression must include `resource/type`. You can combine it with `resource/catalogIdentifier` and `driftSource`. Currently, the supported value for `driftSource` is `entra`.

The `$search` parameter performs a case-insensitive substring search against `resource/catalogName` and `resource/displayName`. For example, `$search=fin` matches a catalog or resource name that contains `Finance`.

The `$orderby` parameter supports `createdDateTime`, `driftCounts/missing`, `driftCounts/total`, `driftCounts/unauthorized`, `resource/displayName`, and `resource/identifier`. You can combine multiple properties and specify `asc` or `desc` for each one.

The maximum value for `$top` is `1000`. When you use `$expand=details`, the maximum value for `$top` is `100`.

When you use `$expand=details`, each summary includes up to five access drift details. If more details are available for a summary, that summary includes a `details@odata.nextLink` property that identifies the contained details collection.

The following examples show supported query patterns:

- Filter by resource type: `$filter=resource/type eq 'application'`
- Filter by resource type and drift source: `$filter=resource/type eq 'application' and driftSource eq 'entra'`
- Search catalog and resource names: `$search=Sales`
- Expand details: `$expand=details`
- Order by resource name: `$orderby=resource/displayName`
- Order by unauthorized count: `$orderby=driftCounts/unauthorized desc`

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessDriftSummary](../resources/accessdriftsummary.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_accessdriftsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/insights/accessDriftSummary?$filter=resource/type eq 'application' and driftSource eq 'entra'
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessDriftSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```
