---
title: "incident: mergeIncidents"
description: "Merge multiple incidents into a single incident."
author: "HarelDamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 05/06/2026
---

# incident: mergeIncidents
Namespace: microsoft.graph.security

Merge multiple [incident](../resources/security-incident.md) resources into a single incident.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_incident_mergeincidents" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-incident-mergeincidents-permissions.md)]

[!INCLUDE [rbac-security-alerts-incidents-apis-write](../includes/rbac-for-apis/rbac-security-alerts-incidents-apis-write.md)]

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/incidents/mergeIncidents
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter | Type | Description |
|:---|:---|:---|
| incidentIds | String collection | Required. The IDs of the [incidents](../resources/security-incident.md) to merge. |
| incidentComment | String | Optional. A comment to add to the merged incident. |
| mergeReasons | [microsoft.graph.security.correlationReason](../resources/security-correlationreason.md) | Optional. The correlation reasons for merging the incidents. This object is a flags enum that allows multiple values to be specified. |

## Response

If successful, this action returns a `200 OK` response code and a [microsoft.graph.security.mergeResponse](../resources/security-mergeresponse.md) object in the response body.

## Examples

### Example 1: Merge incidents

#### Request

The following example merges two incidents.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "security_incident_mergeincidents_v1"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/incidents/mergeIncidents
Content-Type: application/json

{
  "incidentIds": [
    "2972395",
    "2972396"
  ],
  "incidentComment": "Merging related incidents from the same campaign",
  "mergeReasons": "sameCampaign, sameActor"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/security-incident-mergeincidents-v1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/security-incident-mergeincidents-v1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/security-incident-mergeincidents-v1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-incident-mergeincidents-v1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/security-incident-mergeincidents-v1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/security-incident-mergeincidents-v1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/security-incident-mergeincidents-v1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.security.mergeResponse"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "targetIncidentId": "2972395"
}
```
