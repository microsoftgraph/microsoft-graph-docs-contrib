---
title: "Create sharePointRestoreSession"
description: "Create a new sharePointRestoreSession object."
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# Create sharePointRestoreSession

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [sharePointRestoreSession](../resources/sharepointrestoresession.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "backuprestoreroot-post-sharepointrestoresessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/backuprestoreroot-post-sharepointrestoresessions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/sharePointRestoreSessions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [sharePointRestoreSession](../resources/sharepointrestoresession.md) object.

You can specify the following properties when creating a **sharePointRestoreSession**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|status|restoreSessionStatus||status|restoreSessionStatus|Status of the restore session. It is an aggregated status of restore artifacts.The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|
|createdDateTime|DateTimeOffset|DateTimeOffset|The time of completion of the restore session. Inherited from [microsoft.backupRestore.restoreSessionBase](../resources/restoresessionbase.md). Optional.|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|The identity of person who created the restore session. Inherited from [microsoft.backupRestore.restoreSessionBase](../resources/restoresessionbase.md). Optional.|
|completedDateTime|DateTimeOffset|The time of creation of the restore session. Inherited from [microsoft.backupRestore.restoreSessionBase](../resources/restoresessionbase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this restore session. Inherited from [microsoft.backupRestore.restoreSessionBase](../resources/restoresessionbase.md). Optional.|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Identity of the person who last modified this restore session. Inherited from [microsoft.backupRestore.restoreSessionBase](../resources/restoresessionbase.md). Optional.|
|error|[microsoft.graph.publicError](../resources/publicerror.md)|Error details will be populated here, if the restore session fails or completed with error. Inherited from [microsoft.backupRestore.restoreSessionBase](../resources/restoresessionbase.md). Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [sharePointRestoreSession](../resources/sharepointrestoresession.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_sharepointrestoresession_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions
Content-Type: application/json

{
  "@odata.type": "#microsoft.backupRestore.sharePointRestoreSession",
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
  "@odata.type": "microsoft.backupRestore.sharePointRestoreSession"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.backupRestore.sharePointRestoreSession",
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

