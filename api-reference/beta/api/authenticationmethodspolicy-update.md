---
title: "Update authenticationMethodsPolicy"
description: "Update the properties of an authenticationMethodsPolicy object."
author: "michmcla"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update authenticationMethodsPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.AuthenticationMethod|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /authenticationMethodsPolicy
PATCH /policies/authenticationMethodsPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object.

The following table shows the properties that are required when you update the [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the policy. Inherited from [entity](../resources/entity.md)|
|displayName|String|The name of the policy.|
|description|String|A description of the policy|
|lastModifiedDateTime|DateTimeOffset|The datetime of the last update to the policy.|
|policyVersion|String|The version of the policy in use.|
|reconfirmationInDays|Int32|Users will be asked to confirm their authentication methods every so many days as set by this setting.|
|registrationEnforcement|[registrationEnforcement](../resources/registrationenforcement.md)|Settings for enforcing registration at sign-in time. Can currently be used to nudge users to setup targeted authentication methods.|

## Response

If successful, this method returns a `200 OK` response code and an updated [authenticationMethodsPolicy](../resources/authenticationmethodspolicy.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_authenticationmethodspolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/authenticationMethodsPolicy
Content-Type: application/json
Content-length: 293

{
  "@odata.type": "#microsoft.graph.authenticationMethodsPolicy",
  "displayName": "String",
  "description": "String",
  "policyVersion": "String",
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authenticationMethodsPolicy",
  "id": "098351ca-51ca-0983-ca51-8309ca518309",
  "displayName": "String",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "policyVersion": "String",
  "registrationEnforcement": {
    "@odata.type": "microsoft.graph.registrationEnforcement"
  },
  "reconfirmationInDays": "Integer"
}
```

