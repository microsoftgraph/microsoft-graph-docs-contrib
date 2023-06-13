---
title: "remoteAction enum type"
description: "Remote actions Intune supports."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# remoteAction enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Remote actions Intune supports.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Indicate user initiates an unknown action.|
|factoryReset|1|Indicate user initiates an action to factory reset a device. |
|removeCompanyData|2|Indicate user initiates an action to remove company data from a device. |
|resetPasscode|3|Indicate user initiates an action to remove the passcode of an iOS device, or reset the passcode of Android / Windows device. |
|remoteLock|4|Indicate user initiates an action to remote lock a device.|
|enableLostMode|5|Indicate user initiates an action to enable lost mode on a supervised iOS device.|
|disableLostMode|6|Indicate user initiates an action to disable lost mode on a supervised iOS device.|
|locateDevice|7|Indicate user initiates an action to locate a supervised iOS device.|
|rebootNow|8|Indicate user initiates an action to reboot the device.|
|recoverPasscode|9|Indicate user initiates an action to reset the pin for passport for work on windows phone device.|
|cleanWindowsDevice|10|Indicate user initiates an action to clean up windows device.|
|logoutSharedAppleDeviceActiveUser|11|Indicate user initiates an action to log out current user on shared apple device.|
|quickScan|12|Indicate user initiates an action to run quick scan on device.|
|fullScan|13|Indicate user initiates an action to run full scan on device.|
|windowsDefenderUpdateSignatures|14|Indicate user initiates an action to update malware signatures on device.|
|factoryResetKeepEnrollmentData|15|Indicate user initiates an action remote wipe device with keeping enrollment data.|
|updateDeviceAccount|16|Indicate user initiates an action to update account on device.|
|automaticRedeployment|17|Indicate user initiates an action to automatic redeploy the device|
|shutDown|18|Indicate user initiates an action to shut down the device.|
|rotateBitLockerKeys|19|Indicate user initiates an action to Rotate BitLockerKeys on the device.|
|rotateFileVaultKey|20|Indicate user initiates an action to Rotate FileVaultKey on mac.|
|getFileVaultKey|21|Indicate user initiates an action to Get FileVaultKey on mac.|
|setDeviceName|22|Indicate user initiates an action to Set Device Name on the device.|
|activateDeviceEsim|23|Indicate user initiates an action to Activate eSIM on the device.|
|deprovision|24|Indicate user initiates an action to deprovision the device.|
|disable|25|Indicate user initiates an action to disable the device.|
|reenable|26|Indicate user initiates an action to reenable the device.|
|moveDeviceToOrganizationalUnit|27|Indicate user initiates an action to move the device to a new organizational unit.|
|initiateMobileDeviceManagementKeyRecovery|28|Add device action of InitiateMobileDeviceManagementKeyRecovery|
|initiateOnDemandProactiveRemediation|29|Add device action of InitiateOnDemandProactiveRemediation|
|rotateLocalAdminPassword|32|Add device action of RotateLocalAdminPassword|
