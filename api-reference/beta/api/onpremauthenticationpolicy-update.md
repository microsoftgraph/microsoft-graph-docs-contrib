---
title: "Update onPremAuthenticationPolicy"
description: "Update the properties of an onPremAuthenticationPolicy object."
author: "maheshwaria"
ms.date: 09/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update onPremAuthenticationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onpremauthenticationpolicy-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onpremauthenticationpolicy-update-permissions.md)]

[!INCLUDE [onpremauthenticationpolicy-entra-roles-write](../includes/rbac-for-apis/onpremauthenticationpolicy-entra-roles-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/onPremAuthenticationPolicies/{onPremAuthenticationPolicyId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|definition|String collection|A string collection containing a JSON string that defines the rules and settings for this policy. See below for more details about the JSON schema for this property. Required. Inherited from [stsPolicy](../resources/stspolicy.md).|
|description|String|Description for this policy. Inherited from [policyBase](../resources/policybase.md).|
|displayName|String|Display name for this policy. Required. Inherited from [policyBase](../resources/policybase.md).|
|isOrganizationDefault|Boolean|If set to true, this instance of the policy will be considered the default for the organization. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false. Inherited from [stsPolicy](../resources/stspolicy.md).|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_onpremauthenticationpolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/onPremAuthenticationPolicies/2e68a8f2-50ce-b21d-d25d-c34b59675ee2
Content-Type: application/json

{
  "deletedDateTime": null,
  "description": "Updates to policy definition to manage and control authentication settings.",
  "displayName": "Update policy name",
  "definition": [
    "{\"Version\":1,\"LastUpdatedTimestamp\":\"2025-02-29T22:47:12.7764932Z\", \"Key1\": \"Value1\", \"Key2\": {\"SubKey1\": \"SubValue1\"}}"
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
HTTP/1.1 204 No Content
```
