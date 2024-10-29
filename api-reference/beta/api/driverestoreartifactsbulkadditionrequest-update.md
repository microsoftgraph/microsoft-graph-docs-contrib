---
title: "Update driveRestoreArtifactsBulkAdditionRequest"
description: "Update the properties of a driveRestoreArtifactsBulkAdditionRequest object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update driveRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "driverestoreartifactsbulkadditionrequest-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/driverestoreartifactsbulkadditionrequest-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/backupRestore/oneDriveForBusinessRestoreSessions/{oneDriveForBusinessRestoreSessionId}/driveRestoreArtifactsBulkAdditionRequests/{driveRestoreArtifactsBulkAdditionRequestId}
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
|status|restoreArtifactsBulkRequestStatus|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). The possible values are: `unknown`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. Optional.|
|displayName|String|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). Optional.|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). Optional.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). Optional.|
|protectionTimePeriod|[timePeriod](../resources/timeperiod.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). Optional.|
|restorePointPreference|restorePointPreference|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). The possible values are: `latest`, `oldest`, `unknownFutureValue`. Optional.|
|tags|restorePointTags|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). The possible values are: `none`, `fastRestore`, `unknownFutureValue`. Optional.|
|destinationType|destinationType|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). The possible values are: `new`, `inPlace`, `unknownFutureValue`. Optional.|
|protectionUnitIds|String collection|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). Optional.|
|error|[publicError](../resources/publicerror.md)|**TODO: Add Description** Inherited from [restoreArtifactsBulkRequestBase](../resources/restoreartifactsbulkrequestbase.md). Optional.|
|drives|String collection|**TODO: Add Description** Optional.|
|directoryObjectIds|String collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_driverestoreartifactsbulkadditionrequest"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessRestoreSessions/{oneDriveForBusinessRestoreSessionId}/driveRestoreArtifactsBulkAdditionRequests/{driveRestoreArtifactsBulkAdditionRequestId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.driveRestoreArtifactsBulkAdditionRequest",
  "status": "String",
  "displayName": "String",
  "createdBy": {
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
  "drives": [
    "String"
  ],
  "directoryObjectIds": [
    "String"
  ]
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
  "@odata.type": "#microsoft.graph.driveRestoreArtifactsBulkAdditionRequest",
  "id": "a2a673b8-fcc7-ce38-c582-a5accfc8c707",
  "status": "String",
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
  "drives": [
    "String"
  ],
  "directoryObjectIds": [
    "String"
  ]
}
```

