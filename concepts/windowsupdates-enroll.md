---
title: "Enroll in update management by the Windows Update for Business deployment service"
description: "When a device is enrolled in update management by the Windows Update for Business deployment service, you can use the deployment service to manage content delivered from Windows Update to that device."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: conceptualPageType
---

# Enroll in update management by the Windows Update for Business deployment service

When a device is enrolled in update management by the Windows Update for Business deployment service, you can use the deployment service to manage content delivered from Windows Update to that device. You can enroll a device in update management by update category.

Today, the deployment service supports enrollment in management of Windows 10 feature updates. At this time, the deployment service does not require enrollment in management of Windows 10 quality updates in order to deploy expedited quality updates.

## Enroll the device in update management

When you enroll a device in management for a certain update category, the deployment service becomes the authority for updates of that category coming from Windows Update. As a result, device will not receive updates of that category from Windows Update until you deploy an update using the deployment service by assigning it to a [deployment](windowsupdates-deployments.md). Devices are automatically registered with the service when enrolled in management by the service (i.e. an [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice.md) object is automatically created if it does not already exist).

### Request

``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/enrollAssets
Content-Type: application/json

{
  "updateCategory": "feature",
  "assets": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "String (identifier)"
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "String (identifier)"
    },
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "String (identifier)"
    }
  ]
}
```

### Response

``` http
HTTP/1.1 202 Accepted
```

## Unenroll from management by the service or unregister from the service 

When you unenroll a device from management by the service for a given update category, the device is no longer managed by the deployment service and may start receiving other updates from Windows Update based on its policy configuration. If the device is assigned to any deployments for the given update category, it will not receive that content. The device remains registered with the service and is still enrolled and receiving content for other update categories (if applicable).

### Request

``` http
POST https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/unenrollAssets
Content-Type: application/json

{
  "updateCategory": "feature",
  "assets": [
    {
      "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
      "id": "String (identifier)"
    }
  ]
}
```

### Response

``` http
HTTP/1.1 202 Accepted
```

You can unregister a device from the service completely by deleting the device object. When a device is unregistered, it is automatically unenrolled from management by the service for all update categories and removed from all deployment audiences and [updatableAsset]((/graph/api/resources/windowsupdates-updatableasset.md)) groups.

### Request

``` http
DELETE https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/{azureADDeviceId}
```

### Response
``` http
HTTP/1.1 202 Accepted
```

