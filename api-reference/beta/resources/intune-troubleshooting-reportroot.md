---
title: "reportRoot resource type"
description: "The resource that represents an instance of Enrollment Failure Reports."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The resource that represents an instance of Enrollment Failure Reports.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get reportRoot](../api/intune-troubleshooting-reportroot-get.md)|[reportRoot](../resources/intune-shared-reportroot.md)|Read properties and relationships of the [reportRoot](../resources/intune-shared-reportroot.md) object.|
|[Update reportRoot](../api/intune-troubleshooting-reportroot-update.md)|[reportRoot](../resources/intune-shared-reportroot.md)|Update the properties of a [reportRoot](../resources/intune-shared-reportroot.md) object.|
|[managedDeviceEnrollmentFailureDetails function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuredetails.md)|[report](../resources/intune-shared-report.md)||
|[managedDeviceEnrollmentFailureDetails function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuredetails.md)|[report](../resources/intune-shared-report.md)||
|[managedDeviceEnrollmentFailureTrends function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmentfailuretrends.md)|[report](../resources/intune-shared-report.md)|Metadata for the enrollment failure trends report|
|[managedDeviceEnrollmentTopFailures function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmenttopfailures.md)|[report](../resources/intune-shared-report.md)||
|[managedDeviceEnrollmentTopFailures function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmenttopfailures.md)|[report](../resources/intune-shared-report.md)||
|[managedDeviceEnrollmentAbandonmentSummary function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmentabandonmentsummary.md)|[report](../resources/intune-shared-report.md)|Metadata for Enrollment abandonment summary report|
|[managedDeviceEnrollmentAbandonmentDetails function](../api/intune-troubleshooting-reportroot-manageddeviceenrollmentabandonmentdetails.md)|[report](../resources/intune-shared-report.md)|Metadata for Enrollment abandonment details report|

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