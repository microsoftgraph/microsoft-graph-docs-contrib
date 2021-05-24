---
title: "Update authenticationMethodsPolicy"
description: "Update the properties of an authenticationMethodsPolicy object."
author: "mmcla","mjsantani"
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
In the request body, supply a JSON representation of the [registrationEnforcement](../resources/registrationenforcement.md) object to nudge users to setup targeted authentication methods. 

|Property|Type|Description|
|:---|:---|:---|
|registrationEnforcement|[registrationEnforcement](../resources/registrationenforcement.md)|Settings for enforcing registration at sign-in time. Can currently be used to nudge users to setup targeted authentication methods.|

## Response
If successful, this method returns a `200 OK` response code.

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
  "registrationEnforcement": {
    "authenticationMethodsRegistrationCampaign": {
        "snoozeDurationInDays": 1,
        "state": "enabled",
        "excludeTargets": [],
        "includeTargets": [
            {
                "id": "3ee3a9de-0a86-4e12-a287-9769accf1ba2",
                "targetType": "group",
                "targetedAuthenticationMethod": "microsoftAuthenticator"
            }
        ]
    }
  }
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


```

