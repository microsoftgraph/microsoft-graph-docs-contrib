---
title: "List authenticationStrengthPolicies"
description: "Get a list of the authenticationStrengthPolicy objects and their properties."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List authenticationStrengthPolicies
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) objects and their properties.

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
GET /policies/authenticationStrengthPolicies
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

If successful, this method returns a `200 OK` response code and a collection of [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_authenticationstrengthpolicy"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/authenticationStrengthPolicies
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
      "id": "9d4b904e-3cf1-6943-f209-6c29e95e1c2e",
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

