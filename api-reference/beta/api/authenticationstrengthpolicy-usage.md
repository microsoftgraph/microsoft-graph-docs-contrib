---
title: "authenticationStrengthPolicy: usage"
description: "The`usage function allows the caller to see which Conditional Access policies reference a specified authentication strength policy"
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# authenticationStrengthPolicy: usage
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The `usage` function allows the caller to see which Conditional Access policies reference a specified authentication strength policy. The policies are returned in two collections, one containing Conditional Access policies that require an MFA claim and the other containing Conditional Access policies that do not require such a claim. Policies in the former category are restricted in what kinds of changes may be made to them to prevent undermining the MFA requirement of those policies.

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
GET /policies/authenticationStrengthPolicies/{authenticationStrengthPolicyId}/usage
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an [authenticationStrengthUsage](../resources/authenticationstrengthusage.md) complex type in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "authenticationstrengthpolicythis.usage"
}
-->
``` http
GET https://graph.microsoft.com/beta/policies/authenticationStrengthPolicies/{authenticationStrengthPolicyId}/usage
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationStrengthUsage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "mfa": [{
      "displayName": "Conditional Access Policy 1",
      "id": "a26dbede-a6c0-4156-92e1-6c86dd7bc561",
      "grantControls": {
        "authenticationStrength": {"id": "00000000-0000-0000-0000-000000000003"},
        "controls": ["MfaAndChangePassword"]
      }
    }],
  "none": [{
      "displayName": "Conditional Access Policy 2",
      "id": "5d7d5a7f-dd35-412b-a18d-5411d8eafe8f",
      "grantControls": {
        "authenticationStrength": {"id": "00000000-0000-0000-0000-000000000003"},
        "controls": ["RequireCompliantDevice"]
      }
  }]
}

```

