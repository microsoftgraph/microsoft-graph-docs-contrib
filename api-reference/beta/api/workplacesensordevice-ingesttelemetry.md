---
title: "workplaceSensorDevice: ingestTelemetry"
description: "Ingest sensor telemetry for a workplace sensor device."
author: "ms-amakumar"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
ms.date: 06/21/2024
---

# workplaceSensorDevice: ingestTelemetry
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Ingest sensor telemetry for a workplace sensor device.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workplacesensordevice_ingesttelemetry" } -->
[!INCLUDE [permissions-table](../includes/permissions/workplacesensordevice-ingesttelemetry-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters. 

The **sensorId** property may be omitted within the [workplaceSensorDeviceTelemetry](../resources/workplacesensordevicetelemetry.md) object for devices with unique sensor types. When this property is omitted, the [sensorType](../resources/workplacesensor.md#workplacesensortype-values) value serves as the default identifier, consistent with the behavior when you create a device without a specified **sensorId**.

The following table shows the parameters that you can use with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|telemetry|[workplaceSensorDeviceTelemetry](../resources/workplacesensordevicetelemetry.md) collection|A collection of the telemetry data collected and reported by a sensor on a device, such as occupancy, people count, inferred occupancy, temperature, and more.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples
### Example 1: Send sensor telemetry for a device with unique sensor types

The following example shows how to send sensor telemetry for a device with unique sensor types.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "workplacesensordevicethis.ingesttelemetry.unique.sensor.type"
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/workplacesensordevicethisingesttelemetryuniquesensortype-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/workplacesensordevicethisingesttelemetryuniquesensortype-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/workplacesensordevicethisingesttelemetryuniquesensortype-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/workplacesensordevicethisingesttelemetryuniquesensortype-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/workplacesensordevicethisingesttelemetryuniquesensortype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/workplacesensordevicethisingesttelemetryuniquesensortype-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/workplacesensordevicethisingesttelemetryuniquesensortype-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Send sensor telemetry for a device that has multiple sensors of the same type

The following example shows how to send sensor telemetry for a device that has multiple sensors of the same type.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "workplacesensordevicethis.ingesttelemetry.same.sensor.type"
}
-->
``` http
POST https://graph.microsoft.com/beta/workplace/sensorDevices/ingestTelemetry
Content-Type: application/json

{
    "telemetry": [
        {
            "deviceId": "contoso_9D6816",
            "sensorId": "occupancy_1",
            "sensorType": "occupancy",
            "boolValue": false,
            "timestamp": "2021-03-31T09:36:05.144Z"
        },
        {
            "deviceId": "contoso_9D6816",
            "sensorId": "occupancy_2",
            "sensorType": "occupancy",
            "boolValue": false,
            "timestamp": "2021-03-31T09:36:05.144Z"
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/workplacesensordevicethisingesttelemetrysamesensortype-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/workplacesensordevicethisingesttelemetrysamesensortype-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/workplacesensordevicethisingesttelemetrysamesensortype-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/workplacesensordevicethisingesttelemetrysamesensortype-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/workplacesensordevicethisingesttelemetrysamesensortype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/workplacesensordevicethisingesttelemetrysamesensortype-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/workplacesensordevicethisingesttelemetrysamesensortype-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 3: Ingest telemetry for multiple devices

The following example shows how to ingest telemetry for multiple devices.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "workplacesensordevicethis.ingesttelemetry.multiple.devices"
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/workplacesensordevicethisingesttelemetrymultipledevices-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/workplacesensordevicethisingesttelemetrymultipledevices-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/workplacesensordevicethisingesttelemetrymultipledevices-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/workplacesensordevicethisingesttelemetrymultipledevices-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/workplacesensordevicethisingesttelemetrymultipledevices-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/workplacesensordevicethisingesttelemetrymultipledevices-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/workplacesensordevicethisingesttelemetrymultipledevices-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
