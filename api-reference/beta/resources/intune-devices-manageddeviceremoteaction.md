---
title: "managedDeviceRemoteAction enum type"
description: "Intune Devices Manageddeviceremoteaction Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedDeviceRemoteAction enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Members
|Member|Value|Description|
|:---|:---|:---|
|retire|0|Name of the retire action.|
|delete|1|Name of the delete action.|
|fullScan|2|Name of the full Scan action.|
|quickScan|3|Name of the Quick Scan action.|
|signatureUpdate|4|Signature Update action|
|wipe|5|Name of the wipe action.|
|customTextNotification|6|Name of the Custom Text Notification action.|
|rebootNow|7|Name of the reboot now action.|
|setDeviceName|8|Set Device Name action.|
|syncDevice|9|Sync Device action.|
|deprovision|10|Name of the deprovision action.|
|disable|11|Name of the disable action.|
|reenable|12|Name of the reenable action.|
|moveDeviceToOrganizationalUnit|13|Name of the moveDevicesToOU action.|
|activateDeviceEsim|14|Name of action to Activate eSIM on the device.|
|collectDiagnostics|15|Name of the collectDiagnostics action.|
|initiateMobileDeviceManagementKeyRecovery|16|Name of action to initiate MDM key recovery|
|initiateOnDemandProactiveRemediation|17|Name of action to initiate On Demand Proactive Remediation|
|unknownFutureValue|18|Evolvable enum member|
|initiateDeviceAttestation|19|Indicates remote device action to intiate Mobile Device Management (MDM) attestation if device is capable for it|