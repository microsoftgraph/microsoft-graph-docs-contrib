---
title: "Update allDrivesBackup"
description: "Update the properties of an allDrivesBackup object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/15/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Update allDrivesBackup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an allDrivesBackup object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "alldrivesbackup-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/alldrivesbackup-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /allDrivesBackup
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|policyId|String|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). Optional.|
|status|fullServiceBackupStatus|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). The possible values are: `disabled`, `enabled`, `unknownFutureValue`. Optional.|
|actionOnExistingPolicy|fullServiceBackupDisableMode|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). The possible values are: `none`, `enableAll`, `disableAll`, `unknownFutureValue`. Optional.|
|lastRunDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). Optional.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [fullServiceBackupBase](../resources/fullservicebackupbase.md). Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [allDrivesBackup](../resources/alldrivesbackup.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_alldrivesbackup"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/allDrivesBackup
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.allDrivesBackup",
  "policyId": "String",
  "status": "String",
  "actionOnExistingPolicy": "String",
  "lastRunDateTime": "String (timestamp)"
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
  "@odata.type": "#microsoft.graph.allDrivesBackup",
  "id": "40bf4dc4-0a6c-dd0d-cf64-0b495ddbbbe2",
  "policyId": "String",
  "status": "String",
  "actionOnExistingPolicy": "String",
  "lastRunDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

