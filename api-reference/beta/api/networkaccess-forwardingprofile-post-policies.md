---
title: "Create policyLink"
description: "Create a new policy Link object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create policyLink
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new policy Link object.

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
POST /networkAccess/forwardingProfiles/{forwardingProfileId}/policies
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) object.

You can specify the following properties when creating a **policyLink**.

|Property|Type|Description|
|:---|:---|:---|
|state|microsoft.graph.networkaccess.status|Defines the state of a policy link, which establishes a connection between a policy and a specific profile. The possible values are: `enabled`, `disabled`. Required.|


## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_policylink_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/{forwardingProfileId}/policies
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.policyLink",
  "state": "String",
  "version": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.policyLink"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.policyLink",
  "id": "72733275-722a-876c-cc2a-2bc874fef896",
  "state": "String",
  "version": "String"
}
```

