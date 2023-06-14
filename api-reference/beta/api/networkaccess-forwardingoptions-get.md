---
title: "Get forwardingOptions"
description: "Read the skipDnsLookupState flag to skip DNS lookup and forward M365 traffic directly to Front Door using the client-resolved destination"
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get conditionalAccessSettings
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the  conditional access signaling for source IP restoration and Connectivity through NaaS

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

To read the configuration, the calling user must also be in one of the following [Azure AD roles](https://learn.microsoft.com/azure/active-directory/roles/permissions-reference):

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
GET /networkAccess/settings/forwardingOptions
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.conditionalAccessSettings](../resources/networkaccess-conditionalaccesssettings.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_conditionalaccesssettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/settings/forwardingOptions
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.conditionalAccessSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
    "@odata.context": "https://graph.microsoft.com/beta/networkAccess/settings/$metadata#forwardingOptions",
    "skipDnsLookupState": "enabled"
}
```


