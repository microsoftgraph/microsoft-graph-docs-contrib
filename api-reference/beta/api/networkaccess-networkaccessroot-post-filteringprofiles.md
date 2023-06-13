---
title: "Create filteringProfile"
description: "Create a new filteringProfile object."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Create filteringProfile
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.

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
POST /networkAccess/filteringProfiles/{filteringProfileId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object.

You can specify the following properties when creating a **filteringProfile**.

|Property|Type|Description|
|:---|:---|:---|
|name|String|Filtering Profile Name. Required.|
|description|String|Filtering Profile description. Optional.|
|state|microsoft.graph.networkaccess.status|Determines whether the profile is enabled or disabled. Required.|
|priority|Int64|Filtering Profile priority Required.|




## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.networkaccess.filteringProfile](../resources/networkaccess-filteringprofile.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_filteringprofile_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/networkAccess/filteringProfiles/
Content-Type: application/json

{
    "name": "Filtering Profile",
    "state": "enabled",
    "priority": 110,
    "policies": [],
    "description": "Filtering Profile for all comapny"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.filteringProfile"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/filteringProfiles/$entity",
    "priority": 110,
    "createdDateTime": "2023-05-23T08:18:14Z",
    "id": "b5ab9708-ac30-4bda-aeb9-61e5cf1e22bb",
    "name": "Filtering Profile",
    "description": "Filtering Profile for all comapny",
    "state": "enabled",
    "version": "1.0.0",
    "lastModifiedDateTime": "2023-05-23T08:18:14Z"
}
```


