---
title: "authenticationStrengthPolicy: findByMethodMode"
description: "Get authentication strength policies that include specified authentication method modes"
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# authenticationStrengthPolicy: findByMethodMode
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.Read.All, Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/authenticationStrengthPolicies/findByMethodMode
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|authenticationMethodModes|authenticationMethodModes collection|The authentication method modes to search for in existing authentication strength policies.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "authenticationstrengthpolicythis.findbymethodmode"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/authenticationStrengthPolicies/findByMethodMode(authenticationMethodModes=[
  "String"
])
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationStrengthPolicy)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.authenticationStrengthPolicy",
      "id": "String (identifier)",
      "createdDateTime": "String (timestamp)",
      "modifiedDateTime": "String (timestamp)",
      "displayName": "String",
      "description": "String",
      "policyType": "String",
      "requirementsSatisfied": "String",
      "allowedCombinations": [
        "String"
      ]
    }
  ]
}
```

