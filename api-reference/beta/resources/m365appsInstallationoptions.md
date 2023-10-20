---
title: "m365AppsInstallationOptions resource type"
description: "Represents the tenant-level installation options for Microsoft 365 Apps."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "reports"
author: "yan-git"
---

# m365AppsInstallationOptions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the tenant-level installation options for Microsoft 365 Apps. Specify how often users get feature updates and the Microsoft 365 Apps that users can install.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get m365AppsInstallationOptions](../api/m365AppsInstallationOptions-get.md)|[microsoft.admin.m365AppsInstallationOptions](../resources/m365appsInstallationoptions.md)|Get the tenant-level installation options for Microsoft 365 Apps.|
|[Update m365AppsInstallationOptions](../api/m365AppsInstallationOptions-update.md)|None|Update tenant-level installation options for Microsoft 365 Apps.|

## Properties

| Property       | Type           | Description                                 |
| -------------- | -------------- | ------------------------------------------- |
| updateChannel | [appsUpdateChannelType](../resources/appsUpdateChannelType.md) | Specify how often users get feature updates for Microsoft 365 Apps installed on devices running Windows. The possible values are: 'current', 'monthlyEnterprise', or 'semiAnnual', with corresponding update frequencies of 'As soon as they're ready', 'Once a month', and 'Every six months'. |
| appsForWindows | [appsInstallationOptionsForWindows](../resources/appsInstallationOptionsForWindows.md) | The Microsoft 365 applications installation options container object for Windows platform. |
| appsForMac | [appsInstallationOptionsForMac](../resources/appsInstallationOptionsForMac.md) | The Microsoft 365 applications installation options container object for MAC platform. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.m365AppsInstallationOptions",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.m365AppsInstallationOptions",
  "updateChannel": "String",
  "appsForWindows": {"@odata.type": "microsoft.graph.appsInstallationOptionsForWindows"},
  "appsForMac": {"@odata.type": "microsoft.graph.appsInstallationOptionsForMac"}
}
```
