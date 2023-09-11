---
title: "Update tenantAttachRBAC"
description: "Update the properties of a tenantAttachRBAC object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update tenantAttachRBAC

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [tenantAttachRBAC](../resources/intune-devices-tenantattachrbac.md) object.

## Permissions
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
PATCH /deviceManagement/tenantAttachRBAC
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [tenantAttachRBAC](../resources/intune-devices-tenantattachrbac.md) object.

The following table shows the properties that are required when you create the [tenantAttachRBAC](../resources/intune-devices-tenantattachrbac.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity|



## Response
If successful, this method returns a `200 OK` response code and an updated [tenantAttachRBAC](../resources/intune-devices-tenantattachrbac.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/tenantAttachRBAC
Content-type: application/json
Content-length: 58

{
  "@odata.type": "#microsoft.graph.tenantAttachRBAC"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 107

{
  "@odata.type": "#microsoft.graph.tenantAttachRBAC",
  "id": "37568f2c-8f2c-3756-2c8f-56372c8f5637"
}
```
