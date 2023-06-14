---
title: "Update crossTenantAccessSettings"
description: "Updates the network packet tagging status for a user's tenant ID to enforce Tenant Restrictions Policies (TRv2 Policies) that prevent data exfiltration to external tenants."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Update crossTenantAccessSettings
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object.

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
PATCH /networkAccess/settings/crossTenantAccess
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
|networkPacketTaggingStatus|microsoft.graph.networkaccess.status| network packet tagging status. The possible values are: `enabled`, `disabled`. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.networkaccess.crossTenantAccessSettings](../resources/networkaccess-crosstenantaccesssettings.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_crosstenantaccesssettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/networkAccess/settings/crossTenantAccess
Content-Type: application/json


{
	"@odata.type": "#microsoft.graph.networkaccess.crossTenantAccessSettings",
	"networkPacketTaggingStatus": "enabled"
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
HTTP/1.1 204 No content
```


