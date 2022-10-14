---
title: "Create authenticationCombinationConfiguration"
description: "Create a new authenticationCombinationConfiguration object. In use, only fido2combinationConfigurations may be created, and these may only be created for custom authentication strength policies."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create combinationConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new authenticationCombinationConfiguration object. In use, only [fido2combinationConfigurations](../resources/fido2combinationconfiguration.md) may be created, and these may only be created for custom authentication strength policies.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/conditionalAccess/authenticationStrengths/policies/{authenticationStrengthPolicyId}/combinationConfigurations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object.

You can specify the following properties when creating an **authenticationCombinationConfiguration**. Additionally, you must supply the @odata.type and required properties of the derived type of [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) that you're creating. For example, `"@odata.type" : "#microsoft.graph.fido2CombinationConfiguration"`.

|Property|Type|Description|
|:---|:---|:---|
|appliesToCombinations|authenticationMethodModes collection|The combinations to which this configuration applies. The only possible value for fido2combinationConfigurations is `fido2`. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [fido2CombinationConfiguration](../resources/fido2CombinationConfiguration.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_authenticationcombinationconfiguration_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/conditionalAccess/authenticationStrengths/policies/8313edec-d6af-483f-87b8-ec7cccfd2ab4/combinationConfigurations
Content-Type: application/json
Content-length: 130

{
  "@odata.type" : "#microsoft.graph.fido2CombinationConfiguration",
  "allowedAAGUIDs": [
    "486c3b50-889c-480a-abc5-c04ef7c873e0",
    "c042882f-a621-40c8-94d3-9cde3a826fed",
    "ec454c08-4c77-4012-9d48-45f7f0fccdfb"
  ],
  "appliesToCombinations": ["fido2"]
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationCombinationConfiguration"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type" : "#microsoft.graph.fido2CombinationConfiguration",
  "id": "96cb1a17-e45e-4b4f-8b4b-4a9490d63d66",
  "allowedAAGUIDs": [
    "486c3b50-889c-480a-abc5-c04ef7c873e0",
    "c042882f-a621-40c8-94d3-9cde3a826fed",
    "ec454c08-4c77-4012-9d48-45f7f0fccdfb"
  ],
  "appliesToCombinations": ["fido2"]
}
```

