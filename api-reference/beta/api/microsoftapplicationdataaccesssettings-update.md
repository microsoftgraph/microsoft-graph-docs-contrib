---
title: "Update microsoftApplicationDataAccessSettings"
description: "Update the properties of a microsoftApplicationDataAccessSettings object."
author: "ttomi"
ms.localizationpriority: medium
ms.prod: "insights"
doc_type: apiPageType
---

# Update microsoftApplicationDataAccessSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|User.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PUT /organization/{organizationId}/settings/microsoftApplicationDataAccessSettings
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
|isEnabledForAllMicrosoftApplications|Boolean|When set to 'true', all users in the organization are able to invoke internal APIs using all Microsoft applications, exception can be members of security AAD group Id == `disabledForGroup`. <br> When set to 'false', users in the organization are able to invoke internal APIs using ONLY Office applications.|
|disabledForGroup|String|an Id of security AAD group, whose members won't be able to invoke internal APIs outside Office applications.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoftApplicationDataAccessSettings](../resources/microsoftapplicationdataaccesssettings.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_microsoftapplicationdataaccesssettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/organization/{organizationId}/settings/microsoftApplicationDataAccessSettings
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.microsoftApplicationDataAccessSettings",
  "isEnabledForAllMicrosoftApplications": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```

### Response

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
  "@odata.type": "#microsoft.graph.microsoftApplicationDataAccessSettings",
  "isEnabledForAllMicrosoftApplications": true,
  "disabledForGroup": "edbfe4fb-ec70-4300-928f-dbb2ae86c981"
}
```
