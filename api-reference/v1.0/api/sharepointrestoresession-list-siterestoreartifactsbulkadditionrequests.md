---
title: "List siteRestoreArtifactsBulkAdditionRequests"
description: "Get a list of the siteRestoreArtifactsBulkAdditionRequest objects associated with a sharePointRestoreSession."
author: "nupur-munda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 05/20/2025
---

# List siteRestoreArtifactsBulkAdditionRequests

Namespace: microsoft.graph

Get a list of the [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) objects associated with a [sharePointRestoreSession](../resources/sharepointrestoresession.md). The **siteWebUrls** property is deliberately omitted from the response body in order to limit the response size.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointrestoresession-list-siterestoreartifactsbulkadditionrequests-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointrestoresession-list-siterestoreartifactsbulkadditionrequests-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}/siteRestoreArtifactsBulkAdditionRequests
```

## Optional query parameters

This method doesn't support the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_siterestoreartifactsbulkadditionrequest"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/solutions/backupRestore/sharePointRestoreSessions/959ba739-70b5-43c4-8c90-b2c22014f18b/siteRestoreArtifactsBulkAdditionRequests
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-siterestoreartifactsbulkadditionrequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-siterestoreartifactsbulkadditionrequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-siterestoreartifactsbulkadditionrequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-siterestoreartifactsbulkadditionrequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-siterestoreartifactsbulkadditionrequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-siterestoreartifactsbulkadditionrequest-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-siterestoreartifactsbulkadditionrequest-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.siteRestoreArtifactsBulkAdditionRequest)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "4437afcf-e520-463c-90a7-ca96401d8039",
      "siteWebUrls": [],
      "protectionTimePeriod": {
        "startDateTime": "2021-01-01T00:00:00Z",
        "endDateTime": "2021-01-08T00:00:00Z"
      },
      "destinationType": "new",
      "tags": "fastRestore",
      "restorePointPreference": "latest",
      "displayName": "Site-BulkRestore-1",
      "status": "CompletedWithErrors",
      "restoreSessionId": "d8078599-3b3c-468d-b6ff-adf161a42760",
      "createdDateTime": "2023-09-29T10:36:44.4021389+00:00",
      "createdBy": "",
      "lastModifiedDateTime": "2023-09-29T10:36:44.4021389+00:00",
      "lastModifiedBy": "",
      "error": [
        {
          "code": "BulkRestoreArtifactsNotResolved",
          "message": "Errors while resolving restore artifacts",
          "details": [
            {
              "code": "UserNotBackedup",
              "message": "Email address 'user0@contoso.com' has not been backed up",
              "target": "user0@contoso.com"
            }
          ]
        }
      ]
    }
  ]
}
```
