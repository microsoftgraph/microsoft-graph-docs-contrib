---
title: "Create workplaceSensorDevice"
description: "Create a new workplace sensor device."
author: "ms-amakumar"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# Create workplaceSensorDevice
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new workplace sensor device.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workplace_post_sensordevices" } -->
[!INCLUDE [permissions-table](../includes/permissions/workplace-post-sensordevices-permissions.md)]

For an app with delegated permissions to write workplace devices, the signed-in user must be a member of one of the following Microsoft Entra administrator roles: either Global Administrator or one of the Exchange Online management roles, specifically TenantPlacesManagement.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /workplace/sensorDevices
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [workplaceSensorDevice](../resources/workplacesensordevice.md) object.

You can specify the following properties when you create a **workplaceSensorDevice**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|The description of the device. Optional.|
|deviceId|String|The user-defined unique identifier of the device provided at the time of creation. Required.|
|displayName|String|The display name of the device. Optional.|
|ipV4Address|String|The IPv4 address of the device. Optional.|
|ipV6Address|String|The IPv6 address of the device. Optional.|
|macAddress|String|The MAC address of the device. Optional.|
|manufacturer|String|The manufacturer of the device. Required.|
|placeId|String|The unique identifier of the place where the device is located. If the device is installed in a room equipped with a mailbox, this property should match the **ExternalDirectoryObjectId** or Microsoft Entra object ID of the room mailbox. Optional.|
|sensors|[workplaceSensor](../resources/workplacesensor.md) collection|A list of sensors associated with the device that collect and report data about physical or environmental conditions, such as occupancy, people count, inferred occupancy, temperature, and more. Required.|
|tags|String collection|A list of custom tags associated with the device. Supports `$filter`. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [workplaceSensorDevice](../resources/workplacesensordevice.md) object in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_workplacesensordevice_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/workplace/sensorDevices
Content-Type: application/json

{
    "deviceId": "contoso_9D6816",
    "displayName": "Contoso 9D6816 Device",
    "description": "Contoso 9D6816 Device",
    "macAddress": "00:0A:95:9D:68:16",
    "manufacturer": "Contoso",
    "ipV4Address": "192.168.1.100",
    "ipV6Address": "2001:db8::ff00:42:8329",
    "placeId": "acfa3bc0-2b83-425b-8910-84a0250e9671",
    "tags": [
        "Building A",
        "Floor 3",
        "Room 301",
        "Conference Room"
    ],
    "sensors": [
        {
            "sensorType": "occupancy"
        },
        {
            "sensorType": "peopleCount"
        }
    ]
}
```


### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workplaceSensorDevice"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#workplace/sensorDevices/$entity",
    "id": "ade7078f-4bf5-4239-bfde-95a7c4225df7",
    "deviceId": "contoso_9D6816",
    "displayName": "Contoso 9D6816 Device",
    "description": "Contoso 9D6816 Device",
    "macAddress": "00:0A:95:9D:68:16",
    "manufacturer": "Contoso",
    "ipV4Address": "192.168.1.100",
    "ipV6Address": "2001:db8::ff00:42:8329",
    "placeId": "acfa3bc0-2b83-425b-8910-84a0250e9671",
    "tags": [
        "Building A",
        "Floor 3",
        "Room 301",
        "Conference Room"
    ],
    "sensors": [
        {
            "sensorId": "Occupancy",
            "displayName": null,
            "sensorType": "occupancy",
            "placeId": "acfa3bc0-2b83-425b-8910-84a0250e9671"
        },
        {
            "sensorId": "PeopleCount",
            "displayName": null,
            "sensorType": "peopleCount",
            "placeId": "acfa3bc0-2b83-425b-8910-84a0250e9671"
        }
    ]
}
```
