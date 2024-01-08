---
title: "zebraFotaErrorCode enum type"
description: "An error code indicating the failure reason, when the deployment state is createFailed. Possible values: See zebraFotaErrorCode enum."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# zebraFotaErrorCode enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An error code indicating the failure reason, when the deployment state is createFailed. Possible values: See zebraFotaErrorCode enum.

## Members
|Member|Value|Description|
|:---|:---|:---|
|success|0|Default error code indicating success (no error).|
|noDevicesFoundInSelectedAadGroups|1|This error indicates that no devices were found in the selected Azure Active Directory (AAD) security group(s) when creating a deployment. E.g.: a user selects one or more security groups that doesn't include any devices|
|noIntuneDevicesFoundInSelectedAadGroups|2|This error indicates that no Intune managed devices were found in the selected Azure Active Directory (AAD) security groups when creating a deployment. E.g.: a user selects a group that includes devices that are no longer managed in Intune.|
|noZebraFotaEnrolledDevicesFoundForCurrentTenant|3|This error indicates that no Zebra FOTA enrolled devices were found for the current tenant when creating a deployment. E.g.: a user has not enrolled any devices in Zebra FOTA and attempts to create a deployment targeting only non-Zebra devices.|
|noZebraFotaEnrolledDevicesFoundInSelectedAadGroups|4|This error indicates that no Zebra FOTA enrolled devices were found in the selected Azure Active Directory (AAD) Groups when creating a deployment. E.g.: a user has enrolled one or more devices in Zebra FOTA, but attempts to create a deployment targeting security groups that don't include any Zebra Devices.|
|noZebraFotaDevicesFoundForSelectedDeviceModel|5|This error indicates that no Zebra FOTA devices were found that match the selected device model when creating a deployment. E.g.: a user selects `TC8300` device model, but no Zebra devices with the same device model were found in the targeted Azure Active Directory (AAD) security groups.|
|zebraFotaCreateDeploymentRequestFailure|6|This error indicates that an external request to Zebra APIs failed when creating a deployment. The failure can be caused by a transient issue (e.g.: Network is down) or caused by a permanent server error.|
|unknownFutureValue|7|Evolvable enumeration sentinel value. Do not use.|
