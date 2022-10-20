---
title: "Delete authenticationCombinationConfiguration"
description: "Delete an authenticationCombinationConfiguration for a custom authenticationStrengthPolicy object."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete authenticationCombinationConfiguration
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md)  for a custom [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object.

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
DELETE /identity/conditionalAccess/authenticationStrengths/policies/{authenticationStrengthPolicyId}/combinationConfigurations/{authenticationCombinationConfigurationId}/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_authenticationcombinationconfiguration"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/identity/conditionalAccess/authenticationStrengths/policies/0e371351-6419-4c8a-8047-61eef0212ffb/combinationConfigurations/6cbbcfd0-5054-4a59-a10e-2d21fe09305d
```


### Response
The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

