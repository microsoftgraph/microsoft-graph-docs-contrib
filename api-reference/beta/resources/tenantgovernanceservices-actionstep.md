---
title: "actionStep resource type"
description: "Represents an ordered investigation step returned with related tenant metrics to help callers drill into the signals behind an aggregate metric."
author: "akhil-potturi"
ms.date: 07/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# actionStep resource type

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an ordered investigation step returned with [related tenant](../resources/tenantgovernanceservices-relatedtenant.md) metrics to help callers drill into the signals behind an aggregate metric. Each step reuses the Microsoft Graph recommendations pattern: it pairs human-readable guidance with an existing Microsoft Graph or Azure Resource Manager (ARM) API that, when called, reveals more information about the quality, quantity, or source of the connections behind the aggregate metric. Investigation steps are computed at read time and returned through the **investigationHints** relationship on metrics resources such as [b2bRegistrationMetrics](../resources/tenantgovernanceservices-b2bregistrationmetrics.md), [b2BSignInActivityMetrics](../resources/tenantgovernanceservices-b2bsigninactivitymetrics.md), [multiTenantApplicationMetrics](../resources/tenantgovernanceservices-multitenantapplicationmetrics.md), and [billingMetrics](../resources/tenantgovernanceservices-billingmetrics.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|actionUrl|[microsoft.graph.tenantGovernanceServices.actionUrl](../resources/tenantgovernanceservices-actionurl.md)|The follow-on API reference for the step, containing the URL template and a machine-readable execution directive that a client uses to retrieve the drill-in data.|
|stepNumber|String|The one-based order, as a string, in which the step should be evaluated by a client. Steps are intended to be run in ascending **stepNumber** order because later steps can depend on the output of earlier steps. This value is the key of the resource.|
|text|String|Human-readable guidance that explains what the step does and why it's useful for investigating the related metric.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "stepNumber",
  "@odata.type": "microsoft.graph.tenantGovernanceServices.actionStep",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantGovernanceServices.actionStep",
  "stepNumber": "String (identifier)",
  "text": "String",
  "actionUrl": {
    "@odata.type": "microsoft.graph.tenantGovernanceServices.actionUrl"
  }
}
```
