---
title: "Update authenticationFlowsPolicy"
description: "Update the properties of an authenticationFlowsPolicy object."
author: "linkhp"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update authenticationFlowsPolicy

Namespace: microsoft.graph

Update the properties of an authenticationFlowsPolicy object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.AuthenticationFlows|
|Delegated (personal Microsoft account)|Not Supported|
|Application|Policy.ReadWrite.AuthenticationFlows|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/authenticationFlowsPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object.

The following table shows the properties that are required when you create the [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|selfServiceSignUp|[selfServiceSignUpAuthenticationFlowConfiguration](../resources/selfservicesignupauthenticationflowconfiguration.md)|Self-service sign-up configuration|
|id|String|Inherited property. The ID of the authentication flows policy|
|displayName|String|Inherited property.The human-readable name of the policy, "Authentication flows policy"|
|description|String|Inherited property. A description of the policy|

## Response

If successful, this method returns a `200 OK` response code and an updated [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object in the response body.

## Example

No Content - 204 - 19746ms

### Request
<!-- {
  "blockType": "request",
  "name": "update_authenticationflowspolicy"
}
-->
```http
PATCH https://graph.microsoft.com/beta/policies/authenticationFlowsPolicy
Content-Type: application/json
Content-length: 242

{
  "@odata.type": "#microsoft.graph.authenticationFlowsPolicy",
  "selfServiceSignUp": {
    "@odata.type": "microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration"
  },
  "displayName": "String",
  "description": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.authenticationFlowsPolicy",
  "selfServiceSignUp": {
    "@odata.type": "microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration"
  },
  "id": "682b0e8a-0e8a-682b-8a0e-2b688a0e2b68",
  "displayName": "String",
  "description": "String"
}
```
