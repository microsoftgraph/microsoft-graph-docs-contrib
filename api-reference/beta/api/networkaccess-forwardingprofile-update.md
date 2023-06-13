---
title: "Update forwardingProfile"
description: "Update the properties forwardingProfile object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update forwardingProfile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccess.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported|
|Application|NetworkAccess.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /networkAccess/forwardingProfiles/{forwardingProfileId}
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
|name|String|Name of profile. Required.|
|associations|[microsoft.graph.networkaccess.association](../resources/networkaccess-association.md) collection|Specifies the users, groups, devices, and branch locations that are associated with this traffic forwarding profile. Optional. You must include the **@odata.type** property with a value of the specific association in the body. For example, "@odata.type": "#microsoft.graph.associatedBranch". |


## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.forwardingProfile](../resources/networkaccess-forwardingprofile.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_forwardingprofile"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/forwardingProfiles/{forwardingProfileId}
Content-Type: application/json

{
    "associations": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
            "branchId": "88e5a488-92c3-45d6-ba56-e5cfa63677e8"
        }
    ]
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
HTTP/1.1 200 OK
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/forwardingProfiles/$entity",
    "trafficForwardingType": "m365",
    "priority": 0,
    "id": "e1a17ea9-3d4e-4ea1-952e-17b9aac97ef0",
    "name": "Microsoft 365 traffic forwarding profile",
    "description": "Default traffic forwarding profile for Microsoft 365 traffic acquisition. Assign the profile to client or branch offices to acquire Microsoft 365 traffic for Zero Trust Network Access.",
    "state": "enabled",
    "version": "1.0.0",
    "lastModifiedDateTime": "2023-05-24T05:06:24Z",
    "associations": [
        {
            "@odata.type": "#microsoft.graph.networkaccess.associatedBranch",
            "branchId": "88e5a488-92c3-45d6-ba56-e5cfa63677e8"
        }
    ]
}
```


