---
title: "List auditLogQueries"
description: "Get a list of the auditLogQuery objects and their properties."
author: "arishojaswi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List auditLogQueries
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [auditLogQuery](../resources/security-auditlogquery.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Auditing data can be accessed through Microsoft Purview Audit Search API via the following permissions, which are classified at a Microsoft 365 service level. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

<!-- {
  "blockType": "ignored"
}
-->
|Microsoft 365 service|Delegated (work or school account)|Delegated (personal Microsoft account)|Application
|:---|:---|:---|:---|
|Microsoft OneDrive|AuditLogsQuery-OneDrive.Read.All|Not supported|AuditLogsQuery-OneDrive.Read.All|
|Microsoft Exchange|AuditLogsQuery-Exchange.Read.All|Not supported|AuditLogsQuery-Exchange.Read.All|
|Microsoft SharePoint|AuditLogsQuery-SharePoint.Read.All|Not supported|AuditLogsQuery-SharePoint.Read.All|
|Microsoft Intune|AuditLogsQuery-Endpoint.Read.All|Not supported|AuditLogsQuery-Endpoint.Read.All|
|Microsoft Dynamics CRM|AuditLogsQuery-CRM.Read.All|Not supported|AuditLogsQuery-CRM.Read.All|
|Microsoft Entra|AuditLogsQuery-Entra.Read.All|Not supported|AuditLogsQuery-Entra.Read.All|
|All Audit Logs|AuditLogsQuery.Read.All|Not supported|AuditLogsQuery.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/auditLog/queries
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [auditLogQuery](../resources/security-auditlogquery.md) objects in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_auditlogquery"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/auditLog/queries
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-auditlogquery-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-auditlogquery-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-auditlogquery-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-auditlogquery-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-auditlogquery-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-auditlogquery-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-auditlogquery-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-auditlogquery-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.auditLogQuery)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.auditLogQuery",
      "id": "168ec429-084b-a489-90d8-504a87846305",
      "displayName": "String",
      "filterStartDateTime": "String (timestamp)",
      "filterEndDateTime": "String (timestamp)",
      "recordTypeFilters": [
        "String"
      ],
      "keywordFilter": "String",
      "serviceFilter": "String",
      "operationFilters": [
        "String"
      ],
      "userPrincipalNameFilters": [
        "String"
      ],
      "ipAddressFilters": [
        "String"
      ],
      "objectIdFilters": [
        "String"
      ],
      "administrativeUnitIdFilters": [
        "String"
      ],
      "status": "String"
    }
  ]
}
```

