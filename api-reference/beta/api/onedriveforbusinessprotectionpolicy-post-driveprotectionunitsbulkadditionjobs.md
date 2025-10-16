---
title: "Add driveProtectionUnitsBulkAdditionJob"
description: "Add driveProtectionUnitsBulkAdditionJobs by posting to the driveProtectionUnitsBulkAdditionJobs collection."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/15/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Add driveProtectionUnitsBulkAdditionJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add driveProtectionUnitsBulkAdditionJobs by posting to the driveProtectionUnitsBulkAdditionJobs collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onedriveforbusinessprotectionpolicy-post-driveprotectionunitsbulkadditionjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessprotectionpolicy-post-driveprotectionunitsbulkadditionjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveProtectionUnitsBulkAdditionJobs/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md) object.

You can specify the following properties when creating a **driveProtectionUnitsBulkAdditionJob**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [protectionUnitsBulkJobBase](../resources/protectionunitsbulkjobbase.md). Optional.|
|status|protectionUnitsBulkJobStatus|**TODO: Add Description** Inherited from [protectionUnitsBulkJobBase](../resources/protectionunitsbulkjobbase.md). The possible values are: `unknown`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [protectionUnitsBulkJobBase](../resources/protectionunitsbulkjobbase.md). Optional.|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [protectionUnitsBulkJobBase](../resources/protectionunitsbulkjobbase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [protectionUnitsBulkJobBase](../resources/protectionunitsbulkjobbase.md). Optional.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [protectionUnitsBulkJobBase](../resources/protectionunitsbulkjobbase.md). Optional.|
|error|[publicError](../resources/publicerror.md)|**TODO: Add Description** Inherited from [protectionUnitsBulkJobBase](../resources/protectionunitsbulkjobbase.md). Optional.|
|drives|String collection|**TODO: Add Description** Optional.|
|directoryObjectIds|String collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `204 No Content` response code and a [driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_driveprotectionunitsbulkadditionjob_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveProtectionUnitsBulkAdditionJobs/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.driveProtectionUnitsBulkAdditionJob",
  "displayName": "String",
  "status": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
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
  "truncated": true,
  "@odata.type": "microsoft.graph.driveProtectionUnitsBulkAdditionJob"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.driveProtectionUnitsBulkAdditionJob",
  "id": "1ef92bf4-5b4a-673a-5e51-d5a128e6fcb2",
  "displayName": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
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

