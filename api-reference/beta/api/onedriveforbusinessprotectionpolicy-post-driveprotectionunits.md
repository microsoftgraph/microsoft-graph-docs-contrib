---
title: "Add driveProtectionUnit"
description: "Add driveProtectionUnits by posting to the driveProtectionUnits collection."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/15/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Add driveProtectionUnit

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add driveProtectionUnits by posting to the driveProtectionUnits collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onedriveforbusinessprotectionpolicy-post-driveprotectionunits-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessprotectionpolicy-post-driveprotectionunits-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveProtectionUnits/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [driveProtectionUnit](../resources/driveprotectionunit.md) object.

You can specify the following properties when creating a **driveProtectionUnit**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|policyId|String|**TODO: Add Description** Inherited from [protectionUnitBase](../resources/protectionunitbase.md). Optional.|
|status|protectionUnitStatus|**TODO: Add Description** Inherited from [protectionUnitBase](../resources/protectionunitbase.md). The possible values are: `protectRequested`, `protected`, `unprotectRequested`, `unprotected`, `removeRequested`, `unknownFutureValue`, `offboardRequested`, `offboarded`, `cancelOffboardRequested`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `offboardRequested` , `offboarded` , `cancelOffboardRequested`. Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [protectionUnitBase](../resources/protectionunitbase.md). Optional.|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [protectionUnitBase](../resources/protectionunitbase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [protectionUnitBase](../resources/protectionunitbase.md). Optional.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [protectionUnitBase](../resources/protectionunitbase.md). Optional.|
|protectionSources|protectionSource|**TODO: Add Description** Inherited from [protectionUnitBase](../resources/protectionunitbase.md). The possible values are: `none`, `manual`, `dynamicRule`, `unknownFutureValue`. Required.|
|error|[publicError](../resources/publicerror.md)|**TODO: Add Description** Inherited from [protectionUnitBase](../resources/protectionunitbase.md). Optional.|
|offboardRequestedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [protectionUnitBase](../resources/protectionunitbase.md). Optional.|
|directoryObjectId|String|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|email|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `204 No Content` response code and a [driveProtectionUnit](../resources/driveprotectionunit.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_driveprotectionunit_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveProtectionUnits/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.driveProtectionUnit",
  "policyId": "String",
  "status": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "protectionSources": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "offboardRequestedDateTime": "String (timestamp)",
  "directoryObjectId": "String",
  "displayName": "String",
  "email": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveProtectionUnit"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.driveProtectionUnit",
  "id": "01b4eebb-4049-0332-6e2f-1c1377eca8d8",
  "policyId": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "protectionSources": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "offboardRequestedDateTime": "String (timestamp)",
  "directoryObjectId": "String",
  "displayName": "String",
  "email": "String"
}
```

