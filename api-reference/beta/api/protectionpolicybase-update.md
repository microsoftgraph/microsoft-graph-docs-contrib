---
title: "Update protectionPolicyBase"
description: "Update the properties of a protectionPolicyBase object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/15/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Update protectionPolicyBase

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a protectionPolicyBase object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "protectionpolicybase-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/protectionpolicybase-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /solutions/backupRestore/protectionPolicies/{protectionPolicyBaseId}
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
|displayName|String|**TODO: Add Description** Optional.|
|status|protectionPolicyStatus|**TODO: Add Description**. The possible values are: `inactive`, `activeWithErrors`, `updating`, `active`, `unknownFutureValue`, `dormant`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `dormant`. Optional.|
|isEnabled|Boolean|**TODO: Add Description** Required.|
|protectionPolicyArtifactCount|[protectionPolicyArtifactCount](../resources/protectionpolicyartifactcount.md)|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Optional.|
|retentionSettings|[retentionSetting](../resources/retentionsetting.md) collection|**TODO: Add Description** Optional.|
|billingPolicyId|String|**TODO: Add Description** Optional.|
|protectionMode|BackupPolicyProtectionMode|**TODO: Add Description**. The possible values are: `standard`, `fullServiceBackup`, `unknownFutureValue`. Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [protectionPolicyBase](../resources/protectionpolicybase.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_protectionpolicybase"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/solutions/backupRestore/protectionPolicies/{protectionPolicyBaseId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.protectionPolicyBase",
  "displayName": "String",
  "status": "String",
  "isEnabled": "Boolean",
  "protectionPolicyArtifactCount": {
    "@odata.type": "microsoft.graph.protectionPolicyArtifactCount"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "retentionSettings": [
    {
      "@odata.type": "microsoft.graph.retentionSetting"
    }
  ],
  "billingPolicyId": "String",
  "protectionMode": "String"
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
  "@odata.type": "#microsoft.graph.protectionPolicyBase",
  "id": "5f9452bc-dd70-11d9-3f3b-f26f77a2790e",
  "displayName": "String",
  "status": "String",
  "isEnabled": "Boolean",
  "protectionPolicyArtifactCount": {
    "@odata.type": "microsoft.graph.protectionPolicyArtifactCount"
  },
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "retentionSettings": [
    {
      "@odata.type": "microsoft.graph.retentionSetting"
    }
  ],
  "billingPolicyId": "String",
  "protectionMode": "String"
}
```

