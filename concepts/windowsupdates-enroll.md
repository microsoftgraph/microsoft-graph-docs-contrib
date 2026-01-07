---
title: "Enroll in update management by Windows Autopatch"
description: "Enroll a device in update management so that you can use Windows Autopatch to manage content delivered from Windows Update to that device."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: conceptualPageType
ms.date: 11/07/2024
ms.topic: how-to
---

# Enroll in update management by Windows Autopatch

When you enroll a device in update management by Windows Autopatch, you can use Windows Autopatch to manage content delivered from Windows Update to that device. You can enroll a device in update management by update category.

Today, Windows Autopatch supports device enrollment for Windows 10/11 feature updates and driver updates. At this time, no device enrollment is required in the management of Windows 10/11 quality updates in order to deploy hotpatch or expedited quality updates.

## Enroll the device in update management

When you enroll a device in management for a certain update category, Windows Autopatch becomes the authority for updates of that category coming from Windows Update. As a result, devices don't receive updates of that category from Windows Update until you deploy an update by assigning it to a [deployment](/graph/windowsupdates-deployments). Devices are automatically registered when enrolled in management by Windows Autopatch (that is, an [azureADDevice](/graph/api/resources/windowsupdates-azureaddevice) object is automatically created if it doesn't already exist). For driver enrollment, see [enroll devices in driver management](/graph/windowsupdates-manage-driver-update#step-1-enroll-devices-in-driver-management).

The following example shows how to enroll a device in feature update management.

### Request

```http
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

```http
HTTP/1.1 202 Accepted
```

## Check the enrollment state of a device

You can check the enrollment state of a device by [getting the device](/graph/api/windowsupdates-azureaddevice-get) and looking at the **enrollments** and **errors** properties on the **azureADDevice** object. A device that is successfully enrolled in update management has an [updateManagementEnrollment](/graph/api/resources/windowsupdates-updatemanagementenrollment) object in the enrollments collection, and it doesn't have any [updatableAssetError](/graph/api/resources/windowsupdates-updatableasseterror) objects in the errors collection. A device that tried to enroll but encountered an error has populated collections for both enrollments and errors. A device with no enrollment requests has empty collections for both enrollments and errors.

The following example shows a device that is successfully enrolled in management of feature updates.

### Request

```http
GET https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/983f03cd-03cd-983f-cd03-3f98cd033f98
```

### Response
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
    "id": "983f03cd-03cd-983f-cd03-3f98cd033f98",
    "errors": [],
    "enrollments": [
      {
        "@odata.type": "microsoft.graph.windowsUpdates.updateManagementEnrollment",
        "updateCategory": "feature"
      }
    ]
  }
}
```

## Unenroll from management or unregister  

When you [unenroll](/graph/api/windowsupdates-updatableasset-unenrollassets) a device from management for a given update category, the device is no longer considered managed and might start receiving other updates from Windows Update based on its policy configuration. The unenrolled device is removed from all audiences and deployments that contain content for the given update category. The device remains registered and is still enrolled and receiving content for other update categories, if applicable.

### Request

```http
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

```http
HTTP/1.1 202 Accepted
```

You can unregister a device completely by deleting the device object. When a device is unregistered, it is automatically unenrolled from management for all update categories and removed from every [deploymentAudience](/graph/api/resources/windowsupdates-deploymentaudience) and [updatableAssetGroup](/graph/api/resources/windowsupdates-updatableassetgroup).

### Request

```http
DELETE https://graph.microsoft.com/beta/admin/windows/updates/updatableAssets/{azureADDeviceId}
```

### Response
```http
HTTP/1.1 202 Accepted
```
