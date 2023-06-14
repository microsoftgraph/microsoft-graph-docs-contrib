---
title: "Update conditionalAccessSettings"
description: "Update the conditional access signaling for source IP restoration and Connectivity through NaaS."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update conditionalAccessSettings
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the conditional access signaling for source IP restoration and Connectivity through NaaS

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
PATCH /networkAccess/settings/conditionalAccess
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
|signalingStatus|microsoft.graph.networkaccess.status|**TODO: Add Description**. The possible values are: `enabled`, `disabled`. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_conditionalaccesssettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/settings/conditionalAccess
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess",
    "signalingStatus": "disabled"
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


