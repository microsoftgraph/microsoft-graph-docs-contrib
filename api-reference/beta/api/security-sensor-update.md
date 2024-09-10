---
title: "Update sensor"
description: "Update the properties of a sensor object."
author: "amirfeldman"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 09/10/2024
---

# Update sensor

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [sensor](../resources/security-sensor.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-sensor-update-permissions"
}
-->
|Permission type|Least privileged permission|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|SecurityIdentitiesSensors.ReadWrite.All|SecurityIdentitiesSensors.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|SecurityIdentitiesSensors.ReadWrite.All|SecurityIdentitiesSensors.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /security/identities/sensors/{sensorId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|settings|[microsoft.graph.security.sensorSettings](../resources/security-sensorsettings.md)|sensor settings information. Description can be updated for all sensors types, IsDelayedUpdateEnabled can be updated for all sensors with version < 3.X, DomainControllerDnsNames can be updated for all sensors with version < 3.X except Domain Controllers sensors |



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.sensor](../resources/security-sensor.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "sampleKeys": ["d31dd827-92cd-4cd6-b269-c151a0eec55d"],
  "name": "update_sensor"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/identities/sensors/d31dd827-92cd-4cd6-b269-c151a0eec55d
Content-Type: application/json

{
  "settings": {
    "description": "dc1 settings new description",
    "domainControllerDnsNames": [
        "DC1.domain1.test.local"
    ],
    "isDelayedDeploymentEnabled": false
  }
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
    "@odata.type": "#microsoft.graph.security.sensor",
    "id": "b3c1b5fc-828c-45fa-a1e1-10d74f6d6e9c",
    "displayName": "DC1",
    "sensorType": "domainControllerIntegrated",
    "version": "2.239.18124.58593",
    "deploymentStatus": "upToDate",
    "createdDateTime": "2023-11-16T09:41:24.2585071Z",
    "domainName": "domain1.test.local",
    "healthStatus": "healthy",
    "openHealthIssuesCount": "0",
    "settings": {
        "@odata.type": "microsoft.graph.security.sensorSettings",
        "description": "dc1 settings new description",
        "domainControllerDnsNames": [
            "DC1.domain1.test.local"
        ],
        "isDelayedDeploymentEnabled": false
    }
}
```
