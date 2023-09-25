---
title: "workplaceSensorDevice: ingestTelemetry"
description: "Ingest sensor telemetry for a workplace sensor device."
author: "ms-amakumar"
ms.localizationpriority: medium
ms.prod: "places"
doc_type: apiPageType
---

# workplaceSensorDevice: ingestTelemetry
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Ingest sensor telemetry for a workplace sensor device.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PlaceDevice.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PlaceDeviceTelemetry.ReadWrite.All, PlaceDevice.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /workplace/sensorDevices/ingestTelemetry
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters. 

The sensorId property can be omitted from the [workplaceSensorDeviceTelemetry](../resources/workplacesensordevicetelemetry.md) object for a device that has unique sensor types. The sensorType value will be used as the default value for the sensorId. This is consistent with how a device is created without providing the sensorId.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|telemetry|[workplaceSensorDeviceTelemetry](../resources/workplacesensordevicetelemetry.md) collection|A collection of the telemetry data collected and reported by a sensor on a device, such as occupancy, people count, inferred occupancy, temperature, and more.|

## Response

If successful, this action returns a `204 No Content` response code.

## Examples
### Example 1: Send sensor telemtry for a device with unique sensor types.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "workplacesensordevicethis.ingesttelemetry"
}
-->
``` http
POST https://graph.microsoft.com/beta/workplace/sensorDevices/ingestTelemetry
Content-Type: application/json

{
    "telemetry": [
        {
            "deviceId": "contoso_9D6816",
            "sensorType": "occupancy",
            "boolValue": false,
            "timestamp": "2021-03-31T09:36:05.144Z"
        }
    ]
}
```

#### Response
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

### Example 2: Send sensor telemetry for a device that has multiple sensors of same type.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "workplacesensordevicethis.ingesttelemetry"
}
-->
``` http
POST https://graph.microsoft.com/beta/workplace/sensorDevices/ingestTelemetry
Content-Type: application/json

{
    "telemetry": [
        {
            "deviceId": "contoso_9D6816",
            "sensorId": "occupancy_1"
            "sensorType": "occupancy",
            "boolValue": false,
            "timestamp": "2021-03-31T09:36:05.144Z"
        },
        {
            "deviceId": "contoso_9D6816",
            "sensorId": "occupancy_2"
            "sensorType": "occupancy",
            "boolValue": false,
            "timestamp": "2021-03-31T09:36:05.144Z"
        }
    ]
}
```


#### Response
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

### Example 3: Ingest telemetry for multiple devices.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "workplacesensordevicethis.ingesttelemetry"
}
-->
``` http
POST https://graph.microsoft.com/beta/workplace/sensorDevices/ingestTelemetry
Content-Type: application/json

{
    "telemetry": [
        {
            "deviceId": "contoso_9D6816",
            "sensorType": "occupancy",
            "boolValue": false,
            "timestamp": "2021-03-31T09:36:05.144Z"
        },
        {
            "deviceId": "contoso_9D6817",
            "sensorType": "occupancy",
            "boolValue": false,
            "timestamp": "2021-03-31T09:36:05.144Z"
        }
    ]
}
```


#### Response
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

