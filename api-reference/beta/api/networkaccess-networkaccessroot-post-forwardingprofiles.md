---
title: "Create forwardingProfile"
description: "Create a new forwarding Profile object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create forwardingProfile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.
Note: By default there will be 3 ForwardingProfiles of 3 types: M365, Private and Internet and currenlty you can't create additional profiles.
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

To make changes, the calling user must also be in one of the following [Azure AD roles](https://learn.microsoft.com/azure/active-directory/roles/permissions-reference):

* Global Secure Access Administrator
* Security Administrator
* Global Administrator


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /networkAccess/forwardingProfiles
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.

You can specify the following properties when creating a **forwardingProfile**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|

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
POST /networkAccess/forwardingProfiles
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

