---
title: "Update sensor"
description: "Update the properties of a microsoft.graph.security.sensor object."
author: "naalmog"
ms.localizationpriority: medium
ms.subservice: "Microsoft Defender For Identity"
doc_type: apiPageType
---

# Update sensor

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.security.sensor](../resources/security-sensor.md) object.

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


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Required.|
|sensorType|microsoft.graph.security.sensorType|**TODO: Add Description**. The possible values are: `adConnectIntegrated`, `adcsIntegrated`, `adfsIntegrated`, `domainControllerIntegrated`, `domainControllerStandalone`, `unknownFutureValue`. Required.|
|version|String|**TODO: Add Description** Required.|
|deploymentStatus|microsoft.graph.security.deploymentStatus|**TODO: Add Description**. The possible values are: `upToDate`, `outdated`, `updating`, `updateFailed`, `notConfigured`, `unreachable`, `disconnected`, `startFailure`, `syncing`, `unknownFutureValue`. Required.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|domainName|String|**TODO: Add Description** Required.|
|healthStatus|microsoft.graph.security.sensorHealthStatus|**TODO: Add Description**. The possible values are: `healthy`, `notHealthyLow`, `notHealthyMedium`, `notHealthyHigh`, `unknownFutureValue`. Required.|
|openHealthIssuesCount|Int64|**TODO: Add Description** Required.|
|settings|[microsoft.graph.security.sensorSettings](../resources/security-sensorsettings.md)|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.sensor](../resources/security-sensor.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_sensor"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/identities/sensors/{sensorId}
Content-Type: application/json
{
  "@odata.type": "#microsoft.graph.security.sensor",
  "displayName": "String",
  "sensorType": "String",
  "version": "String",
  "deploymentStatus": "String",
  "domainName": "String",
  "healthStatus": "String",
  "openHealthIssuesCount": "Integer",
  "settings": {
    "@odata.type": "microsoft.graph.security.sensorSettings"
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
  "id": "0b28e446-166b-97fc-4b98-b857b1f2546a",
  "displayName": "String",
  "sensorType": "String",
  "version": "String",
  "deploymentStatus": "String",
  "createdDateTime": "String (timestamp)",
  "domainName": "String",
  "healthStatus": "String",
  "openHealthIssuesCount": "Integer",
  "settings": {
    "@odata.type": "microsoft.graph.security.sensorSettings"
  }
}
```
