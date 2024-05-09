---
title: "Create oneDriveForBusinessRestoreSession"
description: "Create a new oneDriveForBusinessRestoreSession object."
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# Create oneDriveForBusinessRestoreSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "backuprestoreroot-post-onedriveforbusinessrestoresessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-post-onedriveforbusinessrestoresessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/oneDriveForBusinessRestoreSessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md) object.

You can specify the following properties when creating an **oneDriveForBusinessRestoreSession**.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore session created|
|completedDateTime|DateTimeOffset|The time of creation of the restore session.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the restore session.|
|createdDateTime|DateTimeOffset|The time of completion of the restore session.|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if the restore session fails or completed with error.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this restore session.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this restore session.|
|status|[restoreSessionStatus](../resource/onedriveforbusinessrestoresession.md#restoreSessionStatus-values)|Status of the restore session. It is an aggregated status of restore artifacts.The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|



## Response

If successful, this method returns a `201 Created` response code and an [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_onedriveforbusinessrestoresession_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessRestoreSessions
Content-Type: application/json

{
  "@odata.type": "#microsoft.backupRestore.oneDriveForBusinessRestoreSession",
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
  "truncated": true,
  "@odata.type": "microsoft.backupRestore.oneDriveForBusinessRestoreSession"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.backupRestore.oneDriveForBusinessRestoreSession",
  "id": "aa8db46c-ccb9-5144-8553-76ad7939fa74",
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

