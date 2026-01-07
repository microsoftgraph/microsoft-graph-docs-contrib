---
title: "policySetStatus enum type"
description: "The enum to specify the status of PolicySet."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# policySetStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The enum to specify the status of PolicySet.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default Value.|
|validating|1|All PolicySet items are now validating for corresponding settings of workloads.|
|partialSuccess|2|Post process complete for all PolicySet items but there are failures.|
|success|3|All PolicySet items are deployed. Doesn’t mean that all deployment succeeded. |
|error|4|PolicySet processing completely failed.|
|notAssigned|5|PolicySet/PolicySetItem is not assigned to any group.|