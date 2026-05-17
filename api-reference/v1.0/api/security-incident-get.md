---
title: "Get incident"
description: "Retrieve the properties and relationships of an incident object."
ms.date: 03/03/2026
author: "LeonardoMele-MSFT"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get incident
Namespace: microsoft.graph.security

Retrieve the properties and relationships of an [incident](../resources/security-incident.md) object.

Attacks are typically inflicted on different types of entities, such as devices, users, and mailboxes, resulting in multiple [alert](../resources/security-alert.md) objects. Microsoft 365 Defender correlates alerts with the same attack techniques or the same attacker into an **incident**.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_incident_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-incident-get-permissions.md)]

[!INCLUDE [rbac-security-alerts-apis-read](../includes/rbac-for-apis/rbac-security-alerts-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/incidents/{incidentId}
```


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [incident](../resources/security-incident.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["29"],
  "name": "get_incident"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/incidents/29
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-incident-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-incident-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-incident-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-incident-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-incident-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-incident-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-incident-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.incident"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/incidents/$entity",
    "id": "29",
    "tenantId": "cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
    "status": "active",
    "incidentWebUrl": "https://security.microsoft.com/incident2/29/overview?tid=cfcdbe43-297b-4c6b-ac7e-8d7f6befb514",
    "redirectIncidentId": null,
    "displayName": "Multi-stage incident involving Execution & Command and control on one endpoint",
    "createdDateTime": "2026-01-22T12:09:23.1433333Z",
    "lastUpdateDateTime": "2026-02-25T16:29:33.1Z",
    "assignedTo": "admin@contoso.com",
    "classification": "truePositive",
    "determination": "multiStagedAttack",
    "severity": "high",
    "customTags": [
        "Demo"
    ],
    "systemTags": [],
    "description": "Microsoft observed Raspberry Robin worm activity spreading through infected USB devices on multiple endpoints in your environment.",
    "lastModifiedBy": "API-App:admin@contoso.com",
    "resolvingComment": null,
    "summary": "Defender Experts has identified malicious activity. This incident has been raised for your awareness and should be investigated as usual.",
    "priorityScore": 100,
    "comments": []
}
```
