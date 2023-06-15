---
title: "Create policyRule"
description: "Creates a policy rule that defines a specific policy or set of conditions for controlling access, permissions, or behaviors within a system"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create policyRule
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Creates a policy rule that defines a specific policy or set of conditions for controlling access, permissions, or behaviors within a system

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy/policyRules
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object.

You can specify the following properties when creating a **policyRule**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|Policy name Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_policyrule_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/filteringProfiles/{filteringProfileId}/policies/{policyLinkId}/policy/policyRules
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.policyRule",
  "name": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.policyRule"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.policyRule",
  "id": "92bc5f58-a28b-94ee-0caa-92c81e446163",
  "name": "String"
}
```

