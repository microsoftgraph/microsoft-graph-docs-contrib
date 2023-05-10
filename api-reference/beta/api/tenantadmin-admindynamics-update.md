---
title: "Update adminDynamics"
description: "Update the properties of a microsoft.graph.tenantAdmin.adminDynamics object."
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Update adminDynamics
Namespace: microsoft.graph.tenantAdmin

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.tenantAdmin.adminDynamics](../resources/tenantadmin-admindynamics.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**OrgSettings-DynamicsVoice.ReadWrite.All**|
|Delegated (personal Microsoft account)|**Not supported.**|
|Application|**OrgSettings-DynamicsVoice.ReadWrite.All**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /admin/dynamics
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
|customerVoice|[microsoft.graph.tenantAdmin.customerVoiceSettings](../resources/tenantadmin-customervoicesettings.md)|**Company wide settings for Dynamics customer voice** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.tenantAdmin.adminDynamics](../resources/tenantadmin-admindynamics.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_admindynamics"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/dynamics
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.tenantAdmin.adminDynamics",
  "customerVoice": {
    "@odata.type": "microsoft.graph.tenantAdmin.customerVoiceSettings"
  }
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
  "@odata.type": "#microsoft.graph.tenantAdmin.adminDynamics",
  "id": "6099c226-4296-c20b-eb7f-a5f7c648cbed",
  "customerVoice": {
    "@odata.type": "microsoft.graph.tenantAdmin.customerVoiceSettings"
  }
}
```

