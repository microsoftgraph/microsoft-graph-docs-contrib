---
title: "Update healthIssue"
description: "Update the properties of a healthIssue object."
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 09/18/2024
---

# Update healthIssue

Namespace: microsoft.graph.security

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
```http
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
  "name": "update_healthissue"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/security/identities/healthIssues/b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c
Content-Type: application/json

{
  "status": "closed"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-healthissue-csharp-snippets.md)]
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
  "truncated": true
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.healthIssue",
  "additionalInformation": ["Descendant User Objects (Schema-Id-Guid: bf967aba-0de6-11d0-a285-00aa003049e2)"],
  "createdDateTime": "2022-07-15T12:19:27.7211305Z",
  "description": "Directory Services Object Auditing isn't configured as required on domain1.contoso.com",
  "displayName": "Directory Services Object Auditing isn't configured as required",
  "domainNames": ["domain1.contoso.com", "domain2.contoso.com"],
  "healthIssueType": "Global",
  "id": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
  "issueTypeId": "1031",
  "lastModifiedDateTime": "2022-07-15T12:19:27.7211305Z",
  "recommendations": ["Please configure the Directory Services Object Auditing events according to the guidance as described in https://aka.ms/mdi/objectauditing"],
  "recommendedActionCommands": ["Import-Module DefenderForIdentity"],
  "sensorDNSNames": ["DC1.domain1.contoso.com", "DC2.domain2.contoso.com"],
  "severity": "medium",
  "status": "closed"
}
```
