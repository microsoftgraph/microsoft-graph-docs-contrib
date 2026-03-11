---
title: "List granularSiteRestoreArtifacts"
description: "Get a list of the granularSiteRestoreArtifact objects and their properties."
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# List granularSiteRestoreArtifacts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [granularSiteRestoreArtifact](../resources/granularsiterestoreartifact.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointrestoresession_list_granularsiterestoreartifacts" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointrestoresession-list-granularsiterestoreartifacts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}/granularSiteRestoreArtifacts
```

## Optional query parameters

This method doesn't support the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [granularSiteRestoreArtifact](../resources/granularsiterestoreartifact.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_granularsiterestoreartifact"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions/01b9d504-a6a4-464b-b2e1-0085d9fab651/granularSiteRestoreArtifacts
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.granularSiteRestoreArtifact"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/sharePointRestoreSessions('01b9d504-a6a4-464b-b2e1-0085d9fab651')/granularSiteRestoreArtifacts",
  "value": [
    {
      "id": "f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e,3be2f282-276a-4a1a-8db0-8bf0849df84d,292dcd7d-b1c3-40e5-afc3-7c10503a0eac",
      "browseSessionId": "m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE",
      "restoredItemKey": "",
      "webUrl": "",
      "restoredItemPath": "",
      "restoredItemWebUrl": "",
      "status": "added",
      "restorePointDateTime": "0001-01-01T00:00:00Z",
      "startDateTime": "0001-01-01T00:00:00Z",
      "completionDateTime": "0001-01-01T00:00:00Z",
      "siteId": "f3846f8d-80a6-4480-ae20-5966ebdf2009"
    },
    {
      "id": "f3846f8d-80a6-4480-ae20-5966ebdf2009,26380145-c085-4772-b5ef-94de6bc9447e,3be2f282-276a-4a1a-8db0-8bf0849df84d,8d1ba53f-986a-409f-bf90-3bf55dbd7526",
      "browseSessionId": "m_RtZ8BiiUXOK69cuN6gwubfm9_yeVlDg8s6hci01_cVOAE",
      "restoredItemKey": "",
      "webUrl": "",
      "restoredItemPath": "",
      "restoredItemWebUrl": "",
      "status": "unknown",
      "restorePointDateTime": "0001-01-01T00:00:00Z",
      "startDateTime": "0001-01-01T00:00:00Z",
      "completionDateTime": "0001-01-01T00:00:00Z",
      "siteId": "f3846f8d-80a6-4480-ae20-5966ebdf2009"
    }
  ]
}
```

