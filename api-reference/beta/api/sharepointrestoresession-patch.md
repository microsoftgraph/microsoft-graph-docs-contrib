---
title: "Update sharePointRestoreSession"
description: "Update the properties of a sharePointRestoreSession object."
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
---

# Update sharePointRestoreSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [sharePointRestoreSession](../resources/sharepointrestoresession.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointrestoresession-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointrestoresession-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}
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
|id|String|The unique identifier of the restore session updated|
|status|[restoreSessionStatus](../resource/restoresessionbase.md#restoreSessionStatus-values)|Status of the restore session. It is an aggregated status of restore artifacts.The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|
|completedDateTime|DateTimeOffset|The time of creation of the restore session.|
|createdBy|identitySet|The identity of person who created the restore session.|
|createdDateTime|DateTimeOffset|The time of completion of the restore session.|
|error|publicError|Error details will be populated here, if the restore session fails or completed with error.|
|lastModifiedBy|identitySet|Identity of the person who last modified this restore session.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this restore session.|



## Response

If successful, this method returns a `200 OK` response code and an updated [sharePointRestoreSession](../resources/sharepointrestoresession.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_sharepointrestoresession"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sharePointRestoreSession",
  "status": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "completedDateTime": "String (timestamp)",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sharePointRestoreSession",
  "id": "1f1d563f-95ed-72e3-9096-998291f6e0f7",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "completedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```

