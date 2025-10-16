---
title: "Add mailboxProtectionRule"
description: "Add mailboxInclusionRules by posting to the mailboxInclusionRules collection."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/15/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# Add mailboxProtectionRule

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add mailboxInclusionRules by posting to the mailboxInclusionRules collection.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "exchangeprotectionpolicy-post-mailboxinclusionrules-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/exchangeprotectionpolicy-post-mailboxinclusionrules-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxInclusionRules/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [mailboxProtectionRule](../resources/mailboxprotectionrule.md) object.

You can specify the following properties when creating a **mailboxProtectionRule**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|status|protectionRuleStatus|**TODO: Add Description** Inherited from [protectionRuleBase](../resources/protectionrulebase.md). The possible values are: `draft`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`, `updateRequested`, `deleteRequested`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `updateRequested` , `deleteRequested`. Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [protectionRuleBase](../resources/protectionrulebase.md). Optional.|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [protectionRuleBase](../resources/protectionrulebase.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [protectionRuleBase](../resources/protectionrulebase.md). Optional.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Inherited from [protectionRuleBase](../resources/protectionrulebase.md). Optional.|
|error|[publicError](../resources/publicerror.md)|**TODO: Add Description** Inherited from [protectionRuleBase](../resources/protectionrulebase.md). Optional.|
|isAutoApplyEnabled|Boolean|**TODO: Add Description** Inherited from [protectionRuleBase](../resources/protectionrulebase.md). Optional.|
|mailboxExpression|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `204 No Content` response code and a [mailboxProtectionRule](../resources/mailboxprotectionrule.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_mailboxprotectionrule_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxInclusionRules/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mailboxProtectionRule",
  "status": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "isAutoApplyEnabled": "Boolean",
  "mailboxExpression": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxProtectionRule"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mailboxProtectionRule",
  "id": "b6cf5834-2f79-f6dd-ca72-21606e47cabf",
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
  "isAutoApplyEnabled": "Boolean",
  "mailboxExpression": "String"
}
```

