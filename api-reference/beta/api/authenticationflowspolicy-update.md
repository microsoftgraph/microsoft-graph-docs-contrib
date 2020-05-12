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
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/concepts/permissions-reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policyRoot/authenticationFlowsPolicy
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
|selfServiceSignUp|[selfServiceSignUpAuthenticationFlowConfiguration](../resources/selfservicesignupauthenticationflowconfiguration.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_authenticationflowspolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policyRoot/authenticationFlowsPolicy
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
