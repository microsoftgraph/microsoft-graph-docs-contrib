---
title: "investigationActionUrl resource type"
description: "Represents a follow-on API reference for an investigation step returned with related tenant metrics."
author: "akhil-potturi"
ms.date: 07/09/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# investigationActionUrl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a follow-on API reference for an investigation step returned with [related tenant](../resources/tenantgovernanceservices-relatedtenant.md) metrics. It identifies an existing Microsoft Graph or Azure Resource Manager (ARM) API that a client can call to reveal more detail behind an aggregate metric. The **actionUrl** property of the [investigationActionStep](../resources/tenantgovernanceservices-investigationactionstep.md) resource uses this type.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|A machine-readable directive that describes how a client should run the step, in the form `metricPath§operation§input§output` (for example, `b2BRegistrationMetrics.recent.inboundTotalUsers§single§§$verifiedDomains`). Clients use this value to chain steps together and to interpret the output of the associated **url**.|
|url|String|A Microsoft Graph or Azure Resource Manager (ARM) URL template that the client invokes to retrieve the drill-in data for the step. The template can include placeholders such as `{@id}`, `{startDate}`, `{endDate}`, or `{sourceDomain}` that the client resolves from the related tenant, the caller context, or the output of earlier steps. This value can be empty for steps that only transform data returned by a previous step.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.investigationActionUrl"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.investigationActionUrl",
  "displayName": "String",
  "url": "String"
}
```
