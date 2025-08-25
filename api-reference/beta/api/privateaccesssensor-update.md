---
title: "Update privateAccessSensor"
description: "Update the properties of a privateAccessSensor object."
author: "shahzad-khalid"
ms.date: 06/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Update privateAccessSensor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a privateAccessSensor object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "privateaccesssensor-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/privateaccesssensor-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /onPremisesPublishingProfiles/{onPremisesPublishingProfilesId}/sensors/{privateAccessSensorId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|machineName|String|**TODO: Add Description** Required.|
|externalIp|String|**TODO: Add Description** Required.|
|version|String|**TODO: Add Description** Required.|
|isBreakglassEnabled|Boolean|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [privateAccessSensor](../resources/privateaccesssensor.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_privateaccesssensor"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/onPremisesPublishingProfiles/{onPremisesPublishingProfilesId}/sensors/{privateAccessSensorId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.privateAccessSensor",
  "machineName": "String",
  "externalIp": "String",
  "version": "String",
  "isBreakglassEnabled": "Boolean"
}
```


### Response

The following example shows the response.
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
  "@odata.type": "#microsoft.graph.privateAccessSensor",
  "id": "f052d43d-effc-2df0-70a8-5e899d400d42",
  "machineName": "String",
  "externalIp": "String",
  "version": "String",
  "isBreakglassEnabled": "Boolean"
}
```

