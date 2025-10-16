---
title: "Add siteProtectionUnitsBulkAdditionJob"
description: "Add siteProtectionUnitsBulkAdditionJobs by posting to the siteProtectionUnitsBulkAdditionJobs collection."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/15/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Add siteProtectionUnitsBulkAdditionJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add siteProtectionUnitsBulkAdditionJobs by posting to the siteProtectionUnitsBulkAdditionJobs collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointprotectionpolicy-post-siteprotectionunitsbulkadditionjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointprotectionpolicy-post-siteprotectionunitsbulkadditionjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteProtectionUnitsBulkAdditionJobs/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md) object.

You can specify the following properties when creating a **siteProtectionUnitsBulkAdditionJob**.

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
|siteWebUrls|String collection|**TODO: Add Description** Optional.|
|siteIds|String collection|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `204 No Content` response code and a [siteProtectionUnitsBulkAdditionJob](../resources/siteprotectionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_siteprotectionunitsbulkadditionjob_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteProtectionUnitsBulkAdditionJobs/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.siteProtectionUnitsBulkAdditionJob",
  "displayName": "String",
  "status": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
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
  "@odata.type": "microsoft.graph.siteProtectionUnitsBulkAdditionJob"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.siteProtectionUnitsBulkAdditionJob",
  "id": "2a23048c-1af6-34a3-263c-0d7d34b0bc73",
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
  "siteWebUrls": [
    "String"
  ],
  "siteIds": [
    "String"
  ]
}
```

