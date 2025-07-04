---
title: "deviceEnrollmentType enum type"
description: "Possible ways of adding a mobile device to management."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 09/12/2024
---

# deviceEnrollmentType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible ways of adding a mobile device to management.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default value, enrollment type was not collected.|
|userEnrollment|1|User driven enrollment through BYOD channel.|
|deviceEnrollmentManager|2|User enrollment with a device enrollment manager account.|
|appleBulkWithUser|3|Apple bulk enrollment with user challenge. (DEP, Apple Configurator)|
|appleBulkWithoutUser|4|Apple bulk enrollment without user challenge. (DEP, Apple Configurator, Mobile Config)|
|windowsAzureADJoin|5|Windows 10 Azure AD Join.|
|windowsBulkUserless|6|Windows 10 Bulk enrollment through ICD with certificate.|
|windowsAutoEnrollment|7|Windows 10 automatic enrollment. (Add work account)|
|windowsBulkAzureDomainJoin|8|Windows 10 bulk Azure AD Join.|
|windowsCoManagement|9|Windows 10 Co-Management triggered by AutoPilot or Group Policy.|
|windowsAzureADJoinUsingDeviceAuth|10|Windows 10 Azure AD Join using Device Auth.|
|appleUserEnrollment|11|Indicates the device is enrolled via Apple User Enrollment with Company Portal. It results in an enrollment with a new partition for managed apps and data and which supports a limited set of management capabilities|
|appleUserEnrollmentWithServiceAccount|12|Indicates the device is enrolled via Apple User Enrollment with Company Portal using a device enrollment manager user. It results in an enrollment with a new partition for managed apps and data and which supports a limited set of management capabilities|
|azureAdJoinUsingAzureVmExtension|14|Azure AD Join enrollment when an Azure VM is provisioned|
|androidEnterpriseDedicatedDevice|15|Android Enterprise Dedicated Device|
|androidEnterpriseFullyManaged|16|Android Enterprise Fully Managed|
|androidEnterpriseCorporateWorkProfile|17|Android Enterprise Corporate Work Profile|
|androidAOSPUserOwnedDeviceEnrollment|18|Indicates the device enrollment is for android device owned by/associated with user using Android Open Source Project (AOSP) on a non-Google mobile services.|
|androidAOSPUserlessDeviceEnrollment|19|Indicates the device enrollment is for user less android device using Android Open Source Project (AOSP) on a non-Google mobile services.|
|appleAccountDrivenUserEnrollment|25|Indicates the device is enrolled via Apple Account Driven User Enrollment, a form of enrollment where the user enrolls via iOS Settings without using the iOS Company Portal. It results in an enrollment with a new partition for managed apps and data and which supports a limited set of management capabilities.|
|unknownFutureValue|26|Evolvable enum member|
