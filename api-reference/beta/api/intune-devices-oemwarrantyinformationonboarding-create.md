---
title: "Create oemWarrantyInformationOnboarding"
description: "Create a new oemWarrantyInformationOnboarding object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create oemWarrantyInformationOnboarding

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/oemWarrantyInformationOnboarding
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the oemWarrantyInformationOnboarding object.

The following table shows the properties that are required when you create the oemWarrantyInformationOnboarding.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for OEM Warranty status. This property is read-only.|
|oemName|String|OEM name. This property is read-only.|
|enabled|Boolean|Specifies whether warranty query is enabled for given OEM. This property is read-only.|
|available|Boolean|Specifies whether warranty API is available. This property is read-only.|



## Response
If successful, this method returns a `201 Created` response code and a [oemWarrantyInformationOnboarding](../resources/intune-devices-oemwarrantyinformationonboarding.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/oemWarrantyInformationOnboarding
Content-type: application/json
Content-length: 148

{
  "@odata.type": "#microsoft.graph.oemWarrantyInformationOnboarding",
  "oemName": "Oem Name value",
  "enabled": true,
  "available": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 197

{
  "@odata.type": "#microsoft.graph.oemWarrantyInformationOnboarding",
  "id": "55491425-1425-5549-2514-495525144955",
  "oemName": "Oem Name value",
  "enabled": true,
  "available": true
}
```






