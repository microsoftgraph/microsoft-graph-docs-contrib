---
title: "deviceManagementConfigurationJustInTimeAssignmentPolicyType enum type"
description: "Represents the type of target (i.e. unique identifier of Entra Security Group or Organizational Unit (OU)) used to create the just-in-time assignment."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceManagementConfigurationJustInTimeAssignmentPolicyType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the type of target (i.e. unique identifier of Entra Security Group or Organizational Unit (OU)) used to create the just-in-time assignment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default value. Do not use.|
|entraSecurityGroup|1|Entra security group.|
|organizationalUnit|2|Organizational unit.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|
