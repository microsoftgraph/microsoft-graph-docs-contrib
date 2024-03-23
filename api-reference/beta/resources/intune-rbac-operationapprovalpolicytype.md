---
title: "operationApprovalPolicyType enum type"
description: "The set of available policy types that can be configured for approval. There is no default value for this enum, indicating that the policy type must always be chosen."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# operationApprovalPolicyType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The set of available policy types that can be configured for approval. There is no default value for this enum, indicating that the policy type must always be chosen.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Indicates that the configured policy type is unknown. This property is not allowed on an OperationApprovalRequest unless the PolicySet contains a different OperationApprovalPolicyType.|
|deviceAction|1|Indicates that the configured policy type is for a Device Action.|
|deviceWipe|2|Indicates that the configured policy type is for a Device Wipe Action.|
|deviceRetire|3|Indicates that the configured policy type is for a Device Retire Action.|
|deviceRetireNonCompliant|4|Indicates that the configured policy type is for a Retire Non-Compliant Devices Action.|
|deviceDelete|5|Indicates that the configured policy type is for a Device Delete Action.|
|deviceLock|6|Indicates that the configured policy type is for a Device Lock Action.|
|deviceErase|7|Indicates that the configured policy type is for a Device Erase Action.|
|deviceDisableActivationLock|8|Indicates that the configured policy type is for a Device Disable Activation Lock Action.|
|windowsEnrollment|9|Indicates that the configured policy type is for a Windows Enrollment.|
|compliancePolicy|10|Indicates that the configured policy type is for a Compliance Policy.|
|configurationPolicy|11|Indicates that the configured policy type is for a Configuration Policy.|
|appProtectionPolicy|12|Indicates that the configured policy type is for an App Protection Policy.|
|policySet|13|Indicates that the configured policy type is for a Policy Set.|
|filter|14|Indicates that the configured policy type is for a Filter.|
|endpointSecurityPolicy|15|Indicates that the configured policy type is for an Endpoint Security Policy.|
|apps|16|Indicates that the configured policy type is an application type, such as mobile apps or built-in apps.|
|script|17|Indicates that the configured policy type is a script type, such as Powershell scripts or remediation scripts.|
|role|18|Indicates that the configured policy type is for a Role.|
|deviceResetPasscode|19|Indicates that the configured policy type is for a Device Reset Passcode Action.|
|customOrganizationalMessage|20|Indicates that the configured policy type is for a Custom Organizational Message.|
|unknownFutureValue|21|Evolvable enumeration sentinel value. Do not use.|
