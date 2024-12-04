---
title: "Get siteRestoreArtifactsBulkAdditionRequest"
description: "Get a siteRestoreArifatcsBulkAdditionRequest in a Sharepoint Restore Session"
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Get siteRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object by it's `id` associated with a [sharePointRestoreSession](../resources/sharepointrestoresession.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "siterestoreartifactsbulkadditionrequest-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/siterestoreartifactsbulkadditionrequest-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}/siteRestoreArtifactsBulkAdditionRequests/{siteRestoreArtifactsBulkAdditionRequestId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json|
|Application|application/json|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_siterestoreartifactsbulkadditionrequest"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions/89ca51b1-b0a5-4555-a8f3-ad95afcf867d/siteRestoreArtifactsBulkAdditionRequests/b246ac99-4184-48ed-b7ff-9c2a7af69757
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.siteRestoreArtifactsBulkAdditionRequest"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.siteRestoreArtifactsBulkAdditionRequest",
    "id": "b246ac99-4184-48ed-b7ff-9c2a7af69757",
    "status": "active",
    "displayName": "String",
    "createdDateTime": "String (timestamp)",
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "protectionTimePeriod": {
      "@odata.type": "microsoft.graph.timePeriod"
    },
    "restorePointPreference": "String",
    "tags": "String",
    "destinationType": "String",
    "protectionUnitIds": [
      "String"
    ],
    "error": {
      "@odata.type": "microsoft.graph.publicError"
    },
    "siteWebUrls": [
      "String"
    ],
    "siteIds": [
      "String"
    ]
  }
}
```

