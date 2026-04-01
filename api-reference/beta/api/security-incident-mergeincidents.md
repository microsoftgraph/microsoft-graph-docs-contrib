---
title: "incident: mergeIncidents"
description: "Merge multiple incidents into a single incident."
author: "HarelDamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 02/24/2026
---

# incident: mergeIncidents
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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
  "name": "security_incident_mergeincidents"
}
-->
```http
POST https://graph.microsoft.com/beta/security/incidents/mergeIncidents
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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/security-incident-mergeincidents-javascript-snippets.md)]
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
