---
title: "List healthIssues"
description: "Get a list of health issue objects and their properties."
author: "amirfeldman"
ms.localizationpriority: medium
doc_type: apiPageType
ms.date: 03/20/2024
---

# List healthIssues

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [health issue](../resources/security-healthissue.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_identitycontainer_list_healthissues" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-identitycontainer-list-healthissues-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response: `$count`, `$filter`, `$skip`, `$top`. For general information, see [OData query parameters](/graph/query-parameters).

The following examples show how to use optional query parameters.

### Get all open health alerts
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues?$filter=Status eq 'open'
```

### Get the top five open health alerts
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues?$filter=Status eq 'open'&$top=5
```

### Get open health alerts based on issue type
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues?$filter=Status eq 'open' and healthIssueType eq 'global'
GET /security/identities/healthIssues?$filter=Status eq 'open' and healthIssueType eq 'sensor'
```

### Get open health alerts based on severity
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthIssues?$filter=Status eq 'open' and severity eq 'medium'
GET /security/identities/healthIssues?$filter=Status eq 'open' and severity eq 'low'
```

See open global health alerts that domain name \ sensor DNS name ends with spesific value (name=contoso.com)
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/healthissues?$filter=Status eq 'open' and healthIssueType eq 'global' and domainNames/any(s:endswith(s,'contoso.com'))
GET /security/identities/healthissues?$filter=Status eq 'open' and healthIssueType eq 'global' and sensorDNSNames/any(s:endswith(s,'contoso.com'))
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [healthIssue](../resources/security-healthissue.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_healthIssues"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/identities/healthIssues
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-healthissues-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-healthissues-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-healthissues-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-healthissues-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-healthissues-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-healthissues-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-healthissues-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-healthissues-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.healthIssue)",
  "name": "get_healthIssues"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.healthIssue",
      "ID": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
      "displayName": "Directory Services Object Auditing is not configured as required",
      "healthIssueType": "Global",
      "issueTypeId": "1031",
      "severity": "medium",
      "status": "open",
      "createdDateTime": "2022-07-15T12:19:27.7211305Z",
      "lastModifiedDateTime": "2022-07-15T12:19:27.7211305Z",
      "domainNames": [
        "domain1.contoso.com",
        "domain2.contoso.com"
      ],
      "sensorDNSNames": [
        "DC1.domain1.contoso.com",
        "DC2.domain2.contoso.com"
      ],
      "description": "Directory Services Object Auditing is not configured as required on domain1.contoso.com",
      "recommendations": [
        "Please configure the Directory Services Object Auditing events according to the guidance as described in https://aka.ms/mdi/objectauditing"
      ],
      "recommendedActionCommands": [
        "Import-Module DefenderForIdentity",
        "Set-MDIConfiguration -Configuration DomainObjectAuditing -Mode Domain -Force"
      ],
      "additionalInformation": [
        "Descendant User Objects (Schema-Id-Guid: bf967aba-0de6-11d0-a285-00aa003049e2)",
        "Descendant Group Objects (Schema-Id-Guid: bf967a9c-0de6-11d0-a285-00aa003049e2)",
        "Descendant Computer Objects (Schema-Id-Guid: bf967a86-0de6-11d0-a285-00aa003049e2)",
        "Descendant msDS-GroupManagedServiceAccount Objects (Schema-Id-Guid: 7b8b558a-93a5-4af7-adca-c017e67f1057)",
        "Descendant msDS-ManagedServiceAccount Objects (Schema-Id-Guid: ce206244-5827-4a86-ba1c-1c0c386c1b64)"
      ]
    }
  ]
}
```

