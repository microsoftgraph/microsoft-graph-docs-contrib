---
title: "operationApprovalPolicyType enum type"
description: "The set of available policy types that can be configured for approval. The policy type must always be defined in an OperationApprovalRequest."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
---

# operationApprovalPolicyType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The set of available policy types that can be configured for approval. The policy type must always be defined in an OperationApprovalRequest.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Indicates that the configured policy type is unknown. Not a valid policy type in an OperationApprovalPolicy.|
|deviceAction|1|Indicates that the configured policy type is for a Device Action. Not in use at this time.|
|deviceWipe|2|Indicates that the configured policy type is for a Device Wipe Action. Not in use at this time.|
|deviceRetire|3|Indicates that the configured policy type is for a Device Retire Action. Not in use at this time.|
|deviceRetireNonCompliant|4|Indicates that the configured policy type is for a Retire Non-Compliant Devices Action. Not in use at this time.|
|deviceDelete|5|Indicates that the configured policy type is for a Device Delete Action. Not in use at this time.|
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
|script|17|Indicates that the configured policy type is a script type, such as Powershell scripts or remediation scripts.|
|role|18|Indicates that the configured policy type is for a Role. Not in use at this time.|
|deviceResetPasscode|19|Indicates that the configured policy type is for a Device Reset Passcode Action. Not in use at this time.|
|customOrganizationalMessage|20|Indicates that the configured policy type is for a Custom Organizational Message. Not in use at this time.|
|unknownFutureValue|21|Evolvable enumeration sentinel value. Do not use.|
|operationApprovalPolicy|22|Indicates that the configured policy type is for an Operation Approval Policy.|
