---
title: "Update healthIssue"
description: "Update the properties of a healthIssue object."
author: "amirfeldman"
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "security"
ms.date: 06/11/2024
---

# Update healthIssue

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [healthIssue](../resources/security-healthissue.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_healthissue_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-healthissue-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/identities/healthIssues/{healthIssueId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.security.healthIssueStatus|The status of the health issue. The possible values are: `open`, `closed`, `suppressed`, `unknownFutureValue`.|


## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.healthIssue](../resources/security-healthissue.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c"],
  "name": "update_healthissue"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/identities/healthIssues/b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c
Content-Type: application/json

{
  "status": "closed"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-healthissue-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-healthissue-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-healthissue-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-healthissue-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-healthissue-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-healthissue-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-healthissue-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-healthissue-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.healthIssue",
  "truncated": true,
  "name": "update_healthissue"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.healthIssue",
  "ID": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
  "displayName": "Directory Services Object Auditing is not configured as required",
  "healthIssueType": "Global",
  "issueTypeId": "1031",
  "severity": "medium",
  "status": "closed",
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
```

