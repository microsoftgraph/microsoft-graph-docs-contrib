---
title: "deviceLicensingStatus enum type"
description: "Indicates the device licensing status after Windows device based subscription has been enabled."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceLicensingStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the device licensing status after Windows device based subscription has been enabled.

## Members
|Member|Value|Description|
|:---|:---|:---|
|licenseRefreshStarted|0|This status is set when the license refresh is started.|
|licenseRefreshPending|1|This status is set when the license refresh is pending.|
|deviceIsNotAzureActiveDirectoryJoined|2|This status is set when the device is not joined to Azure Active Directory.|
|verifyingMicrosoftDeviceIdentity|3|This status is set when the Microsoft device identity is being verified.|
|deviceIdentityVerificationFailed|4|This status is set when the Microsoft device identity verification fails.|
|verifyingMicrosoftAccountIdentity|5|This status is set when the Microsoft account identity is being verified.|
|microsoftAccountVerificationFailed|6|This status is set when the Microsoft account identity verification fails.|
|acquiringDeviceLicense|7|This status is set when the device license is being acquired.|
|refreshingDeviceLicense|8|This status is set when the device license is being refreshed.|
|deviceLicenseRefreshSucceed|9|This status is set when the device license refresh succeeds.|
|deviceLicenseRefreshFailed|10|This status is set when the device license refresh fails.|
|removingDeviceLicense|11|This status is set when the device license is being removed.|
|deviceLicenseRemoveSucceed|12|This status is set when the device license removing succeeds.|
|deviceLicenseRemoveFailed|13|This status is set when the device license removing fails.|
|unknownFutureValue|14|This is put here as a place holder for future extension.|
|unknown|-1|Default. Set to unknown when status cannot be determined.|
