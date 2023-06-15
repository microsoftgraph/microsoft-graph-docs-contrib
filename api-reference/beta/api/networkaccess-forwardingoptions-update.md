---
title: "Update forwardingOptions"
description: "Update the forwarding options for the tenant (focusing specifically on the "skipDnsLookupState" flag. This flag determines whether DNS lookup will be skipped and M365 (Microsoft 365) traffic will be forwarded directly to the Front Door using the client-resolved destination)."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update forwardingOptions
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the conditional access signaling for source IP restoration and Connectivity through NaaS

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
PATCH /networkAccess/settings/forwardingOptions
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
|signalingStatus|microsoft.graph.networkaccess.status|"skipDnsLookupState" flag is a boolean value that indicates whether DNS lookup should be performed at the client-side. When enabled (true), DNS lookup is skipped, and M365 traffic is directly forwarded to the Front Door using the client-resolved destination IP status. The possible values are: `enabled`, `disabled`. Required.|



## Response

If successful, this method returns a `204 OK` response code 

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
Request:
{
    "skipDnsLookupState": "disabled"
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


