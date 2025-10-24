---
title: "Create comment for incident"
description: "Adds a comment to the end of the incident comments list"
ms.date: 09/09/2021
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Create comment
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a comment for an existing [incident](../resources/security-incident.md) based on the specified incident **id** property.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_incident_post_comments" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-incident-post-comments-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/incidents/{incidentId}/comments
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, use `@odata.type` to specify the parameter type of [alertComment](../resources/security-alertcomment.md), and provide a JSON object for the parameter, `comment`. See an [example](#examples).

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|comment|String|The comment to be added.|

## Response

If successful, this method returns a `200 OK` response code and an updated list of all [alertComment](../resources/security-alertcomment.md) resources of the incident.

## Examples

### Request
The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["3962396"],
  "name": "incident_addcomment"
}
-->
```http
POST https://graph.microsoft.com/beta/security/incidents/3962396/comments
Content-Type: application/json

{
    "@odata.type": "microsoft.graph.security.alertComment",
    "comment": "Demo for docs"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/incident-addcomment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "@odata.type": "collection(microsoft.graph.security.alertComment)",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/alerts_v2('da637865765418431569_-773071023')/comments",
    "value": [
        {
            "comment": "test",
            "createdByDisplayName": "secAdmin@contoso.com",
            "createdDateTime": "2022-10-13T07:08:45.4626766Z"
        },
        {
            "comment": "Demo for docs",
            "createdByDisplayName": "secAdmin@contoso.com",
            "createdDateTime": "2022-10-13T07:08:50.5821324Z"
        }
    ]
}
```
