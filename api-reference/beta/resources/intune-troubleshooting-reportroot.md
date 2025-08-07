---
title: "reportRoot resource type"
description: "The resource that represents an instance of Enrollment Failure Reports."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# reportRoot resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The resource that represents an instance of Enrollment Failure Reports.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get reportRoot](../api/intune-troubleshooting-reportroot-get.md)|[reportRoot](../resources/intune-troubleshooting-reportroot.md)|Read properties and relationships of the [reportRoot](../resources/intune-troubleshooting-reportroot.md) object.|
|[Update reportRoot](../api/intune-troubleshooting-reportroot-update.md)|[reportRoot](../resources/intune-troubleshooting-reportroot.md)|Update the properties of a [reportRoot](../resources/intune-troubleshooting-reportroot.md) object.|
|[managedDeviceEnrollmentFailureDetails function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuredetails.md)|[report](../resources/intune-troubleshooting-report.md)||
|[managedDeviceEnrollmentFailureDetails function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuredetails.md)|[report](../resources/intune-troubleshooting-report.md)||
|[managedDeviceEnrollmentFailureTrends function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuretrends.md)|[report](../resources/intune-troubleshooting-report.md)|Metadata for the enrollment failure trends report|
|[managedDeviceEnrollmentTopFailures function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmenttopfailures.md)|[report](../resources/intune-troubleshooting-report.md)||
|[managedDeviceEnrollmentTopFailures function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmenttopfailures.md)|[report](../resources/intune-troubleshooting-report.md)||
|[managedDeviceEnrollmentAbandonmentSummary function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmentabandonmentsummary.md)|[report](../resources/intune-troubleshooting-report.md)|Metadata for Enrollment abandonment summary report|
|[managedDeviceEnrollmentAbandonmentDetails function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmentabandonmentdetails.md)|[report](../resources/intune-troubleshooting-report.md)|Metadata for Enrollment abandonment details report|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this entity.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reportRoot"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot",
  "id": "String (identifier)"
}
```