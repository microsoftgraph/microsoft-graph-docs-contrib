---
title: "Create managedDeviceWindowsOperatingSystemImage"
description: "Create a new managedDeviceWindowsOperatingSystemImage object."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create managedDeviceWindowsOperatingSystemImage

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [managedDeviceWindowsOperatingSystemImage](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/managedDeviceWindowsOSImages
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the managedDeviceWindowsOperatingSystemImage object.

The following table shows the properties that are required when you create the managedDeviceWindowsOperatingSystemImage.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Indicates the unique identifier of the Operating System Image metadata, example: 'Windows 11 22H1'. This specifies a unique Windows product version, which in turn can have multiple quality/security updates available. Supports: $filter, $select, $top, $orderBy, $skip. Read-only.|
|supportedEditions|[managedDeviceWindowsOperatingSystemEdition](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemedition.md) collection|Indicates the list of editions supported by the image along with their support dates. Supports: $filter, $select, $top, $skip. Read-only.|
|supportedArchitectures|[managedDeviceArchitecture](../resources/intune-shared-manageddevicearchitecture.md) collection|Indicates the list of architectures supported by the image. E.g. \['ARM64','X86'\]. Supports: $filter, $select, $top, $skip. Read-only. Possible values are: `unknown`, `x86`, `x64`, `arm`, `arM64`.|
|availableUpdates|[managedDeviceWindowsOperatingSystemUpdate](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemupdate.md) collection|Indicates the available Quality/Security updates for a specific Windows product version (example: Windows 11 22H1), for upto last 3 Patch Tuesdays . This value in the API response would be updated 2-3 days after every Patch Tuesday. Supports: $filter, $select, $top, $skip. Read-only.|



## Response
If successful, this method returns a `201 Created` response code and a [managedDeviceWindowsOperatingSystemImage](../resources/intune-osprovisioninggraphservice-manageddevicewindowsoperatingsystemimage.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/managedDeviceWindowsOSImages
Content-type: application/json
Content-length: 563

{
  "@odata.type": "#microsoft.graph.managedDeviceWindowsOperatingSystemImage",
  "supportedEditions": [
    {
      "@odata.type": "microsoft.graph.managedDeviceWindowsOperatingSystemEdition",
      "editionType": "professionalN",
      "supportEndDate": "2016-12-31"
    }
  ],
  "supportedArchitectures": [
    "x86"
  ],
  "availableUpdates": [
    {
      "@odata.type": "microsoft.graph.managedDeviceWindowsOperatingSystemUpdate",
      "buildVersion": "Build Version value",
      "releaseMonth": 12,
      "releaseYear": 11
    }
  ]
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 612

{
  "@odata.type": "#microsoft.graph.managedDeviceWindowsOperatingSystemImage",
  "id": "32a4ac62-ac62-32a4-62ac-a43262aca432",
  "supportedEditions": [
    {
      "@odata.type": "microsoft.graph.managedDeviceWindowsOperatingSystemEdition",
      "editionType": "professionalN",
      "supportEndDate": "2016-12-31"
    }
  ],
  "supportedArchitectures": [
    "x86"
  ],
  "availableUpdates": [
    {
      "@odata.type": "microsoft.graph.managedDeviceWindowsOperatingSystemUpdate",
      "buildVersion": "Build Version value",
      "releaseMonth": 12,
      "releaseYear": 11
    }
  ]
}
```
