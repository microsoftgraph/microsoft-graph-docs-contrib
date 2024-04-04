---
title: "List permissionsRequestChanges"
description: "List the permissionsRequestChange objects and their properties."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
ms.topic: reference
---

# List permissionsRequestChanges
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [permissionsRequestChange](../resources/permissionsrequestchange.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "permissionsmanagement_list_permissionsrequestchanges" } -->
[!INCLUDE [permissions-table](../includes/permissions/permissionsmanagement-list-permissionsrequestchanges-permissions.md)]

<!--
[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]
-->

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identityGovernance/permissionsManagement/permissionsRequestChanges
```

## Optional query parameters
This method supports the `$filter`, `$top`, and `$orderBy` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [permissionsRequestChange](../resources/permissionsrequestchange.md) objects in the response body.

## Examples

#### Request
The following example shows a request to retrieve a changelog of a scheduled permissions requests at time `t`.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_permissionsrequestchange"
}
-->
``` http
GET https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/permissionsRequestChanges?$filter=modificationDateTime gt {t}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-permissionsrequestchange-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-permissionsrequestchange-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-permissionsrequestchange-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-permissionsrequestchange-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-permissionsrequestchange-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-permissionsrequestchange-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-permissionsrequestchange-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.permissionsRequestChange)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#permissionsRequestChanges",
  "value": [
    {
      "id": "00000000-0000-0000-0000-000000000001",
      "modificationDateTime": "2023-02-06T12:15:00Z",
      "statusDetail": "submitted",
      "ticketId": "INC1234567",
      "permissionsRequestId": "00000000-0000-0000-0000-000000000001"
    },
    {
      "id": "00000000-0000-0000-0000-000000000002",
      "modificationDateTime": "2023-02-08T12:15:00Z",
      "statusDetail": "submitted",
      "ticketId": "INC1234567",
      "permissionsRequestId": "00000000-0000-0000-0000-000000000002"
    },
    {
      "id": "00000000-0000-0000-0000-000000000003",
      "modificationDateTime": "2023-02-010T12:15:00Z",
      "statusDetail": "approved",
      "activeOccurenceStatus": "granting",
      "ticketId": "INC1234567",
      "permissionsRequestId": "00000000-0000-0000-0000-000000000001"
    },
  ],
  "@odata.nextLink": "https://graph.microsoft.com/beta/identityGovernance/permissionsManagement/permissionsRequestChanges?$filter=modificationDateTime gt {t}&$skiptoken=Mg"
}
```

