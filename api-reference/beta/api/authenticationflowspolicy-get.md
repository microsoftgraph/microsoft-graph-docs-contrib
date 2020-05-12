---
title: "Get authenticationFlowsPolicy"
description: "Read the properties and relationships of an authenticationFlowsPolicy object."
author: "linkhp"
localization_priority: Priority
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Get authenticationFlowsPolicy

Namespace: microsoft.graph

Read the properties and relationships of an [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object.

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
GET /policyRoot/authenticationFlowsPolicy
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_authenticationflowspolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/policyRoot/authenticationFlowsPolicy
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.cpim.api.dataModels.authenticationFlowsPolicy"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "value": {
    "@odata.type": "#microsoft.cpim.api.dataModels.authenticationFlowsPolicy",
    "selfServiceSignUp": {
      "@odata.type": "microsoft.graph.selfServiceSignUpAuthenticationFlowConfiguration"
    },
    "id": "682b0e8a-0e8a-682b-8a0e-2b688a0e2b68",
    "displayName": "String",
    "description": "String"
  }
}
```
