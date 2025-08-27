---
title: "Update incidentTask"
description: "Update the status of an incident task in Microsoft Defender XDR."
author: "BenAlfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Update incidentTask

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a Microsoft Defender XDR [incident task](../resources/security-incidenttask.md). You can only update the **status** property.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-incidenttask-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-incidenttask-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/incidentTasks/{incidentTaskId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply only the values you want to update. Omitted properties retain their existing values.

|Property|Type|Description|
|:---|:---|:---|
|status|microsoft.graph.security.incidentTaskStatus|The task status. Values: `open`, `inProgress`, `completed`, `failed`, `notRelevant`, `unknownFutureValue`.|

## Response

If successful, this method returns a `200 OK` response code and the updated [security-incidentTask](../resources/security-incidenttask.md) object in the response body.

## Examples

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_incidenttask"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/incidentTasks/213213
Content-Type: application/json

{
    "status": "completed"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-incidenttask-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-incidenttask-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-incidenttask-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-incidenttask-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-incidenttask-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-incidenttask-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-incidenttask-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "name": "update_incidenttask",
  "truncated": false,
  "@odata.type": "microsoft.graph.security.incidentTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.security.incidentTask",
    "id": "213213",
    "incident": {
        "@odata.type": "#microsoft.graph.security.incident",
        "id": "123"
    },
    "status": "completed",
    "source": "defenderExpertsXDR",
    "displayName": "Reset device testmachine20",
    "description": "Reset the machine",
    "createdDateTime": "2023-06-26T19:07:39.7433333Z",
    "createdByDisplayName": "Defender Experts",
    "lastModifiedDateTime": "2023-06-27T10:49:33.98Z",
    "lastModifiedByDisplayName": "bealfasi",
    "actionType": "text",
    "actionStatus": "notStarted",
    "responseAction": null
}
```

## Related content

- Learn about [Microsoft Graph error responses](/graph/errors).
- [incidentTask](../resources/security-incidenttask.md)
