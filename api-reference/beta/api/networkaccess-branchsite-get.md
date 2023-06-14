---
title: "Get branch"
description: "Read the properties of branch."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get branchSite
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of branch.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

To read the configuration, the calling user must also be in one of the following [Azure AD roles](https://learn.microsoft.com/en-us/azure/active-directory/roles/permissions-reference):

* Global reader
* Global Secure Access Administrator
* Security Administrator
* Global Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/branches/{branchSiteId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.branchSite](../resources/networkaccess-branchsite.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_branchsite"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/branches/{branchSiteId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.branchSite"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches/$entity",
    "id": "047d69c4-2448-45cc-8c0a-40f3ad93c86c",
    "name": "Main Branch",
    "country": "United States",
    "region": "eastUS",
    "version": "1.0.0",
    "bandwidthCapacity": 250,
    "lastModifiedDateTime": "2023-05-23T08:46:32Z",
    "forwardingProfiles@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches('047d69c4-2448-45cc-8c0a-40f3ad93c86c')/forwardingProfiles",
    "forwardingProfiles": [],
    "deviceLinks@odata.context": "https://graph.microsoft.com/beta/$metadata#networkAccess/connectivity/branches('047d69c4-2448-45cc-8c0a-40f3ad93c86c')/deviceLinks",
    "deviceLinks": []
}
```


