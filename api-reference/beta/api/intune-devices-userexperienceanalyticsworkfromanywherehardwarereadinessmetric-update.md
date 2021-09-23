---
title: "Update userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric"
description: "Update the properties of a userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric object."
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: apiPageType
---

# Update userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementManagedDevices.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric.md) object.

The following table shows the properties that are required when you create the [userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics hardware readiness metric object.|
|totalDeviceCount|Int32|The count of total devices in an organization. Valid values -2147483648 to 2147483647|
|upgradeEligibleDeviceCount|Int32|The count of devices in an organization eligible for windows upgrade. Valid values -2147483648 to 2147483647|
|ramCheckFailedPercentage|Double|The percentage of devices for which RAM hardware check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|storageCheckFailedPercentage|Double|The percentage of devices for which storage hardware check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|processorCoreCountCheckFailedPercentage|Double|The percentage of devices for which processor hardware core count check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|processorSpeedCheckFailedPercentage|Double|The percentage of devices for which processor hardware speed check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|tpmCheckFailedPercentage|Double|The percentage of devices for which Trusted Platform Module (TPM) hardware check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|secureBootCheckFailedPercentage|Double|The percentage of devices for which secure boot hardware check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|processorFamilyCheckFailedPercentage|Double|The percentage of devices for which processor hardware family check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|processor64BitCheckFailedPercentage|Double|The percentage of devices for which processor hardware 64-bit architecture check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|
|osCheckFailedPercentage|Double|The percentage of devices for which OS check has failed. Valid values -1.79769313486232E+308 to 1.79769313486232E+308|



## Response
If successful, this method returns a `200 OK` response code and an updated [userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywherehardwarereadinessmetric.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric
Content-type: application/json
Content-length: 626

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric",
  "totalDeviceCount": 0,
  "upgradeEligibleDeviceCount": 10,
  "ramCheckFailedPercentage": 8.0,
  "storageCheckFailedPercentage": 9.3333333333333339,
  "processorCoreCountCheckFailedPercentage": 13.0,
  "processorSpeedCheckFailedPercentage": 11.666666666666666,
  "tpmCheckFailedPercentage": 8.0,
  "secureBootCheckFailedPercentage": 10.333333333333334,
  "processorFamilyCheckFailedPercentage": 12.0,
  "processor64BitCheckFailedPercentage": 11.666666666666666,
  "osCheckFailedPercentage": 7.666666666666667
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 675

{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereHardwareReadinessMetric",
  "id": "6df21a06-1a06-6df2-061a-f26d061af26d",
  "totalDeviceCount": 0,
  "upgradeEligibleDeviceCount": 10,
  "ramCheckFailedPercentage": 8.0,
  "storageCheckFailedPercentage": 9.3333333333333339,
  "processorCoreCountCheckFailedPercentage": 13.0,
  "processorSpeedCheckFailedPercentage": 11.666666666666666,
  "tpmCheckFailedPercentage": 8.0,
  "secureBootCheckFailedPercentage": 10.333333333333334,
  "processorFamilyCheckFailedPercentage": 12.0,
  "processor64BitCheckFailedPercentage": 11.666666666666666,
  "osCheckFailedPercentage": 7.666666666666667
}
```



