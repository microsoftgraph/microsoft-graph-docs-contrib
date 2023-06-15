---
title: "Update branch"
description: "Update the configuration or properties of a specific branch"
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update branchSite
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the configuration or properties of a specific branch

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
PATCH /networkAccess/branches/{branchSiteId}
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
|name|String|The name of the branch site. Required.|
|country|String|The country the branch site is created in. Required.|
|region|String|The location the branch site is created in. Required.|
|bandwidthCapacity|Int64|Determines the maximum allowed Mbps (magabits per second) bandwidth from a branch site. Required.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_branchsite"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/branches/{branchSiteId}
Content-Type: application/json

{
    "@context": "#$delta",
    "name": "My updated branch"
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
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches/$entity",
    "id": "929a620e-fbfe-4041-bcc1-56431ca99606",
    "name": "My updated branch",
    "country": "Israel",
    "region": "Center",
    "version": "1.0.0",
    "bandwidthCapacity": 500,
    "lastModifiedDateTime": "2023-05-24T08:51:15Z",
    "forwardingProfiles@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches('929a620e-fbfe-4041-bcc1-56431ca99606')/forwardingProfiles",
    "forwardingProfiles": [],
    "deviceLinks@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches('929a620e-fbfe-4041-bcc1-56431ca99606')/deviceLinks",
    "deviceLinks": []
}
```


