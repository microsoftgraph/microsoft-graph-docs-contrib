---
title: "m365AppsInstallationOptions resource type"
description: "Represents the tenant-level installation options for Microsoft 365 apps."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.prod: "reports"
author: "yan-git"
---

# m365AppsInstallationOptions resource type

Namespace: microsoft.graph

Represents the tenant-level installation options for Microsoft 365 apps. You can specify how often users get feature updates and the Microsoft 365 apps they can install.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get m365AppsInstallationOptions](../api/m365AppsInstallationOptions-get.md)|[m365AppsInstallationOptions](../resources/m365appsInstallationoptions.md)|Get the tenant-level installation options for Microsoft 365 apps.|
|[Update m365AppsInstallationOptions](../api/m365AppsInstallationOptions-update.md)|None|Update tenant-level installation options for Microsoft 365 apps.|

## Properties

| Property       | Type           | Description                                 |
| -------------- | -------------- | ------------------------------------------- |
| appsForMac | [appsInstallationOptionsForMac](../resources/appsInstallationOptionsForMac.md) | The Microsoft 365 apps installation options container object for a MAC platform. |
| appsForWindows | [appsInstallationOptionsForWindows](../resources/appsInstallationOptionsForWindows.md) | The Microsoft 365 apps installation options container object for a Windows platform. |
| updateChannel | [appsUpdateChannelType](#appsupdatechanneltype-values) | Specifies how often users get feature updates for Microsoft 365 apps installed on devices running Windows. The possible values are: `current`, `monthlyEnterprise`, or `semiAnnual`, with corresponding update frequencies of `As soon as they're ready`, `Once a month`, and `Every six months`. Include the `Prefer: include-unknown-enum-members` header to explicitly request for enum values beyond `unknownFutureValue`.|

### appsUpdateChannelType values

|Member|Description|
|:---|:---|
|current|New Microsoft 365 features as they become available. Updates are released at least once a month, and there isn't a fixed schedule. |
|monthlyEnterprise|New Microsoft 365 features on a predictable schedule, with updates released on the second Tuesday of every month. |
|semiAnnual|For specific devices that require extensive testing before deploying new Microsoft 365 features due to regulatory, governmental, or organizational requirements. Updates are released on the second Tuesday of every month. |
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use. |

## JSON representation

The following JSON representation shows the resource type.
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
