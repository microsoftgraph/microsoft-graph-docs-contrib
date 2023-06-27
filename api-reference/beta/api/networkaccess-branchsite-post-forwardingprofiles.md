---
title: "Create a new branch and assosicate a forwarding Profile"
description: "Create a new branch and associate a forwarding profile."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create a branch and assosicate a forwarding Profile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new branch and associate a forwarding profile.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

[!INCLUDE [rbac-global-secure-access-apis-write](../includes/rbac-for-apis/rbac-global-secure-access-apis-write.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/connectivity/branches/{branchSiteId}/forwardingProfiles
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.

You can specify the following properties when creating a **forwardingProfile**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the branch. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). Required.|
|description|String|Description. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). Optional.|
|state|microsoft.graph.networkaccess.status|Status. Inherited from [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md). The possible values are: `enabled`, `disabled`. Required.|
|associations|[microsoft.graph.networkaccess.association](../resources/networkaccess-association.md) collection|The forwarding profile collection represents a group of multiple forwarding profiles. Required.|



## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_forwardingprofile_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/connectivity/branches/{branchSiteId}/forwardingProfiles
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.forwardingProfile",
  "name": "String",
  "description": "String",
  "state": "String",
  "version": "String",
  "trafficForwardingType": "String",
  "associations": [
    {
      "@odata.type": "microsoft.graph.networkaccess.associatedBranch"
    }
  ],
  "priority": "Integer"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.forwardingProfile"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.networkaccess.forwardingProfile",
  "id": "1f486c29-0344-5a0b-8e03-630176b3e448",
  "name": "String",
  "description": "String",
  "state": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "trafficForwardingType": "String",
  "associations": [
    {
      "@odata.type": "microsoft.graph.networkaccess.associatedBranch"
    }
  ],
  "priority": "Integer"
}
```

