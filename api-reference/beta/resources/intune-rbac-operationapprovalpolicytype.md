---
title: "operationApprovalPolicyType enum type"
description: "The set of available policy types that can be configured for approval. The policy type must always be defined in an OperationApprovalRequest."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# operationApprovalPolicyType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The set of available policy types that can be configured for approval. The policy type must always be defined in an OperationApprovalRequest.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Indicates that the configured policy type is unknown. Not a valid policy type in an OperationApprovalPolicy.|
|deviceAction|1|Indicates that the configured policy type is for a Device Action. Not in use at this time.|
|deviceWipe|2|Indicates that the configured policy type is for a Device Wipe Action.|
|deviceRetire|3|Indicates that the configured policy type is for a Device Retire Action|
|deviceRetireNonCompliant|4|Indicates that the configured policy type is for a Retire Non-Compliant Devices Action. Not in use at this time.|
|deviceDelete|5|Indicates that the configured policy type is for a Device Delete Action.|
|deviceLock|6|Indicates that the configured policy type is for a Device Lock Action. Not in use at this time.|
|deviceErase|7|Indicates that the configured policy type is for a Device Erase Action. Not in use at this time.|
|deviceDisableActivationLock|8|Indicates that the configured policy type is for a Device Disable Activation Lock Action. Not in use at this time.|
|windowsEnrollment|9|Indicates that the configured policy type is for a Windows Enrollment. Not in use at this time.|
|compliancePolicy|10|Indicates that the configured policy type is for a Compliance Policy. Not in use at this time.|
|configurationPolicy|11|Indicates that the configured policy type is for a Configuration Policy. Not in use at this time.|
|appProtectionPolicy|12|Indicates that the configured policy type is for an App Protection Policy. Not in use at this time.|
|policySet|13|Indicates that the configured policy type is for a Policy Set. Not in use at this time.|
|filter|14|Indicates that the configured policy type is for a Filter. Not in use at this time.|
|endpointSecurityPolicy|15|Indicates that the configured policy type is for an Endpoint Security Policy. Not in use at this time.|
|app|16|Indicates that the configured policy type is an application type, such as mobile apps or built-in apps.|
|script|17|Indicates that the configured policy type is a script type, such as PowerShell scripts or remediation scripts.|
|role|18|Indicates that the configured policy type type is for Intune roles, such as application administrator or a custom role.|
|deviceResetPasscode|19|Indicates that the configured policy type is for a Device Reset Passcode Action. Not in use at this time.|
|unknownFutureValue|21|Evolvable enumeration sentinel value. Do not use.|
|operationApprovalPolicy|22|Indicates that the configured policy type is for an Operation Approval Policy.|
|autopilot|23|Indicates that the configured policy type is for Autopilot operations. Not in use at this time.|
|windows365|24|Indicates that the configured policy type is for Windows 365 operations. Not in use at this time.|
|deviceEnrollment|25|Indicates that the configured policy type is for Device Enrollment operations. Not in use at this time.|
|deviceUpdate|26|Indicates that the configured policy type is for Device Update operations. Not in use at this time.|
|enrollmentRestriction|27|Indicates that the configured policy type is for Enrollment Restriction operations. Not in use at this time.|
|tenantConfiguration|28|Indicates that the configured policy type is for Tenant Configuration operations.|
|tunnel|29|Indicates that the configured policy type is for Tunnel operations. Not in use at this time.|
|endpointPrivilegeManagement|30|Indicates that the configured policy type is for Endpoint Privilege Management. Not in use at this time.|
|deviceSecurityAction|31|Indicates that the configured policy type is for Device Security Action. Not in use at this time.|