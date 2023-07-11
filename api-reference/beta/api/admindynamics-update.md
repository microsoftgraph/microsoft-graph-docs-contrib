---
title: "Update adminDynamics"
description: "Update the properties of a Microsoft Graph adminDynamics object."
author: "zadinsmo"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Update adminDynamics
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [adminDynamics](../resources/admindynamics.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|OrgSettings-DynamicsVoice.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|OrgSettings-DynamicsVoice.ReadWrite.All|

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
|customerVoice|[customerVoiceSettings](../resources/customervoicesettings.md)|Company-wide settings for Dynamics customer voice. Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [adminDynamics](../resources/admindynamics.md) object in the response body.

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
  "@odata.type": "#microsoft.graph.adminDynamics",
  "customerVoice": {
    "@odata.type": "microsoft.graph.customerVoiceSettings",
    "isRestrictedSurveyAccessEnabled": "false",
    "isRecordIdentityByDefaultEnabled": "false",
    "isInOrgFormsPhishingScanEnabled": "false"
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
HTTP/1.1 204 No Content
Content-Type: text/plain

```

