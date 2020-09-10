---
title: "Create authenticationMethodsPolicy"
description: "Create a new authenticationMethodsPolicy object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create authenticationMethodsPolicy
Namespace: microsoft.graph

Create a new authenticationMethodsPolicy object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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
POST ** Collection URI for microsoft.graph.authenticationMethodsPolicy not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.

The following table shows the properties that are required when you create the [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|policyVersion|String|**TODO: Add Description**|
|convergedPolicyTargetGroup|String|**TODO: Add Description**|
|registrationAndResetTargets|[registrationAndResetTarget](../resources/registrationandresettarget.md) collection|**TODO: Add Description**|
|registrationEnforcement|[registrationEnforcement](../resources/registrationenforcement.md)|**TODO: Add Description**|
|reconfirmationInDays|Int32|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_authenticationmethodspolicy_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.authenticationMethodsPolicy not found
Content-Type: application/json
Content-length: 459

{
  "@odata.type": "#microsoft.graph.authenticationMethodsPolicy",
  "displayName": "String",
  "description": "String",
  "policyVersion": "String",
  "convergedPolicyTargetGroup": "String",
  "registrationAndResetTargets": [
    {
      "@odata.type": "microsoft.graph.registrationAndResetTarget"
    }
  ],
  "registrationEnforcement": {
    "@odata.type": "microsoft.graph.registrationEnforcement"
  },
  "reconfirmationInDays": "Integer"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationMethodsPolicy"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.authenticationMethodsPolicy",
  "id": "ee306315-6315-ee30-1563-30ee156330ee",
  "displayName": "String",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "policyVersion": "String",
  "convergedPolicyTargetGroup": "String",
  "registrationAndResetTargets": [
    {
      "@odata.type": "microsoft.graph.registrationAndResetTarget"
    }
  ],
  "registrationEnforcement": {
    "@odata.type": "microsoft.graph.registrationEnforcement"
  },
  "reconfirmationInDays": "Integer"
}
```

