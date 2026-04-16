---
title: "correlationReason enum type"
description: "The reasons alerts or incidents are correlated together."
author: "HarelDamti"
ms.date: 02/24/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: enumPageType
---

# correlationReason enum type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The reasons alerts or incidents are correlated together through the [alert: moveAlerts](../api/security-alert-movealerts.md) and [incident: mergeIncidents](../api/security-incident-mergeincidents.md) APIs.

This is a flags enumeration. You can combine multiple values in requests.

## Members

| Member | Description |
|:---|:---|
| repeatedAlertOccurrence | Alerts are correlated because the same alert repeated. |
| sameGeography | Alerts are correlated because they originate from the same geography. |
| similarArtifacts | Alerts are correlated because they involve similar artifacts. |
| sameTargetedAsset | Alerts are correlated because they target the same asset. |
| sameNetworkSegment | Alerts are correlated because they occur in the same network segment. |
| eventSequence | Alerts are correlated because of event sequence. |
| timeFrame | Alerts are correlated because they occur within the same time frame. |
| sameThreatSource | Alerts are correlated because they share the same threat source. |
| similarTTPsOrBehavior | Alerts are correlated because of similar tactics, techniques, procedures, or behavior. |
| sameActor | Alerts are correlated because they involve the same threat actor. |
| sameCampaign | Alerts are correlated because they are part of the same campaign. |
| sharedIndicators | Alerts are correlated because they share indicators of compromise. |
| sameAsset | Alerts are correlated because they involve the same asset. |
| networkProximity | Alerts are correlated because of network proximity. |
| eventCasualSequence | Alerts are correlated because of a causal sequence of events. |
| temporalProximity | Alerts are correlated because of temporal proximity. |
| lateralMovementPath | Alerts are correlated because they are part of a lateral movement path. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
