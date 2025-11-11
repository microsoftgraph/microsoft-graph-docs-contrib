---
title: "Create onPremAuthenticationPolicy"
description: "Create a new onPremAuthenticationPolicy object."
author: "maheshwaria"
ms.date: 09/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Create onPremAuthenticationPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policyroot-post-onpremauthenticationpolicies-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policyroot-post-onpremauthenticationpolicies-permissions.md)]

[!INCLUDE [onpremauthenticationpolicy-entra-roles-write](../includes/rbac-for-apis/onpremauthenticationpolicy-entra-roles-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /policies/onPremAuthenticationPolicies
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object.

You can specify the following properties when creating an **onPremAuthenticationPolicy**.

|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object isn't deleted. Inherited from [directoryObject](../resources/directoryobject.md). Optional.|
|description|String|Description for this policy. Inherited from [policyBase](../resources/policybase.md). Required.|
|displayName|String|Display name for this policy. Inherited from [policyBase](../resources/policybase.md). Required.|
|definition|String collection|A string collection containing a JSON string that defines the rules and settings for this policy. See below for more details about the JSON schema for this property. Inherited from [stsPolicy](../resources/stspolicy.md). Required.|
|isOrganizationDefault|Boolean|If set to true, this instance of the policy will be considered the default for the organization. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false. Inherited from [stsPolicy](../resources/stspolicy.md). Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [onPremAuthenticationPolicy](../resources/onpremauthenticationpolicy.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_onpremauthenticationpolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/policies/onPremAuthenticationPolicies
Content-Type: application/json

{
  "description": "Policy definition to manage and control authentication settings.",
  "displayName": "Policy name",
  "definition": [
    "{\"Version\":1,\"LastUpdatedTimestamp\":\"2025-02-29T22:47:12.7764932Z\", \"Key1\": \"Value1\", \"Key2\": {\"SubKey1\": \"SubValue1\"}}"
  ],
  "isOrganizationDefault": true
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onPremAuthenticationPolicy"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onPremAuthenticationPolicy",
  "deletedDateTime": null,
  "description": "Updates to policy definition to manage and control authentication settings.",
  "displayName": "Update policy name",
  "definition": [
    "{\"Version\":1,\"LastUpdatedTimestamp\":\"2025-02-29T22:47:12.7764932Z\", \"Key1\": \"Value1\", \"Key2\": {\"SubKey1\": \"SubValue1\"}}"
  ],
  "isOrganizationDefault": true
}
```