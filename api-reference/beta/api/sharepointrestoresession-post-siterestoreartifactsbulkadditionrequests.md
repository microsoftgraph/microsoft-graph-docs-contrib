---
title: "Create siteRestoreArtifactsBulkAdditionRequest"
description: "Create a new siteRestoreArtifactsBulkAdditionRequest object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create siteRestoreArtifactsBulkAdditionRequest

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object.

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

In the request body, supply a JSON representation of the [siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) object.

You can specify the following properties when creating a **siteRestoreArtifactsBulkAdditionRequest**.

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
|siteWebUrls|String collection|**TODO: Add Description** Optional.|
|siteIds|String collection|**TODO: Add Description** Optional.|



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
POST https://graph.microsoft.com/beta/solutions/backupRestore/sharePointRestoreSessions/{sharePointRestoreSessionId}/siteRestoreArtifactsBulkAdditionRequests
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.siteRestoreArtifactsBulkAdditionRequest",
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
  "siteWebUrls": [
    "String"
  ],
  "siteIds": [
    "String"
  ]
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
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
  "@odata.type": "#microsoft.graph.siteRestoreArtifactsBulkAdditionRequest",
  "id": "02a99482-7d96-2c8a-1193-d8e596d9de05",
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
  "siteWebUrls": [
    "String"
  ],
  "siteIds": [
    "String"
  ]
}
```

