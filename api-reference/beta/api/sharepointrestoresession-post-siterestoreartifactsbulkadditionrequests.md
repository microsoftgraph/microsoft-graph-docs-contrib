---
title: "Create siteRestoreArtifactsBulkAdditionRequest"
description: "Create siteRestoreArtifactsBulkAdditionRequests for a SharePoint restore session."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Create siteRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object associated with a [sharePointRestoreSession](../resources/sharepointrestoresession.md).

The inital status upon creation of restore session is 'active'. Once the restore session is created and activated, the status becomes 'completed'.
In case of any failures encountered while resource resolution, the status of restore session becomes 'completedWithErrors'.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointrestoresession-post-siterestoreartifactsbulkadditionrequests-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointrestoresession-post-siterestoreartifactsbulkadditionrequests-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}/siteRestoreArtifactsBulkAdditionRequests
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

```json
{
    "displayName": "SPO-BulkRestoreArtifacts",
    "siteWebUrls": [
        "https: //contoso1.sharepoint.com",
        "https: //contoso2.sharepoint.com",
        "https: //contoso3.sharepoint.com"
    ],
    "protectionTimePeriod": {
        "startDateTime": "2024-01-01T00:00:00Z",
        "endDateTime": "2024-01-08T00:00:00Z"
    },
    "destinationType": "new",
    "tags": "fastRestore",
     "restorePointPreference": "latest"
}
```

## Response

If successful, this method returns a `201 Created` response code and a [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_siterestoreartifactsbulkadditionrequest_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions/959ba739-70b5-43c4-8c90-b2c22014f18b/siteRestoreArtifactsBulkAdditionRequests
```

---


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.siteRestoreArtifactsBulkAdditionRequest"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "/solutions/backupRestore/$metadata#siteRestoreArtifactsBulkAdditionRequest/$entity",
  	"id": "4437afcf-e520-463c-90a7-ca96401d8039",    
    "destinationType": "new",
    "tags": "fastRestore",
    "restorePointPreference": "latest"
    "displayName": "Site-BulkRestore-1",
    "status": "Active",
    "restoreSessionId": "d8078599-3b3c-468d-b6ff-adf161a42760",
    "createdDateTime": "2023-09-29T10:36:44.4021389+00:00",      
    "lastModifiedDateTime": "2023-09-29T10:36:44.4021389+00:00",
    "siteWebUrls": []
    "protectionTimePeriod": {
         "startDateTime": "2024-01-01T00:00:00Z",
         "endDateTime": "2024-01-08T00:00:00Z"
    },
    "createdBy": "",
    "lastModifiedBy": "",
    "error": {
		  "isRequestError": false
	  },
	  "errors": []
}
```
