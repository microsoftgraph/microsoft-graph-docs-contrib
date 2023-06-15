---
title: "Update forwardingPolicyLink"
description: "Update the properties of a microsoft.graph.networkaccess.forwardingPolicyLink object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update forwardingPolicyLink
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md) object.

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
PATCH /networkAccess/forwardingProfiles/{forwardingProfileId}/policies/{forwardingPolicyId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|state|microsoft.graph.networkaccess.status|Link status, Inherited from [microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md). The possible values are: `enabled`, `disabled`. Required.|


## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.forwardingPolicyLink](../resources/networkaccess-forwardingpolicylink.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_forwardingpolicylink"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/{forwardingProfile_id}/policies/{policy_id}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.forwardingPolicyLink",
  "state": "enabled"  
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```


