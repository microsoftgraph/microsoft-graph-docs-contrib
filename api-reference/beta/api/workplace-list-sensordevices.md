---
title: "List sensorDevices"
description: "Get a list of all workplace sensor devices created for a tenant."
author: "ms-amakumar"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: apiPageType
---

# List sensorDevices
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of all workplace sensor devices created for a tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|PlaceDevice.Read.All, PlaceDevice.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|PlaceDevice.Read.All, PlaceDevice.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /workplace/sensorDevices
```

## Optional query parameters
This method supports the `$filter`, `$top`, `$select`, and `$skipToken` [OData query parameters](/graph/query-parameters) to help customize the response. You can use `$filter` on the **deviceId**, **displayName**, **description**, **macAddress**, **manufacturer**, **ipV4Address**, **ipV6Address**, and **tags** properties.

### Supported query patterns

| Pattern                | Syntax                                 | Notes |
| ---------------------- | -------------------------------------- | ----- |
| Server-side pagination | `@odata.nextLink`                      | You get a continuation token in the response, when a result set spans multiple pages. |
| Filter                 | `/workplace/sensorDevices?$filter=Tags/Any(x: cast(x, 'String') eq 'Building A')` | Filter devices based on the tags. |
| Filter                 | `/workplace/sensorDevices?$filter=cast(manufacturer, 'String') eq 'Contoso'` | Filter devices based on the manufacturer of the device. |
| Filter                 | `/workplace/sensorDevices?$filter=cast(deviceId, 'String') eq 'contoso_9D6816'` |  Filter devices based on the user provided device identifier.|
| Page limit             | `/workplace/sensorDevices?$top=20` | Get devices with a page size of 20. The default page size is 10. |


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [workplaceSensorDevice](../resources/workplacesensordevice.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_workplacesensordevice"
}
-->
``` http
GET https://graph.microsoft.com/beta/workplace/sensorDevices
```


### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.workplaceSensorDevice)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#workplace/sensorDevices",
    "@odata.nextLink": "https://graph.microsoft.com/beta/workplace/sensorDevices?$top=1&$skiptoken=aHR0cHM6Ly9vdXRsb29rLXNkZi5vZmZpY2UuY29tL2FwaS92Mi4wL09yZ1BhcnRpdGlvbnMoJ0FwcDpQbGFjZXNEZXZpY2VzXzIxNmFlZThkLTNjYzgtNDJhYi1hYmU4LTM0ZGRhZTE1MWI3M0BkNzQ4NTRiNy0zZjFjLTRlM2MtYjJlYy1kOTZlMDY3ZWEwYTYnKS9DdXJyZW50Q29sbGVjdGlvbnMoJ0RldmljZXNDb2xsZWN0aW9uJykvSXRlbXM%2fJTI0dG9wPTEmJTI0c2tpcHRva2VuPU15WlJWa1pDVVZWR1FsRlZSWFpNZVRoMlRIazRka3g1T0haUFJVcENVVlZHUWxOR1RYWldNVnB1WWpBNVFrMUZkRlZTYmxKU1pHcENXV0V6UlRCa2VqQTU%3d",
    "value": [
        {
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
    ]
}
```

