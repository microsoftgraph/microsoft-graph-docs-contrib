---
title: "activityType enum type"
description: "Represents the type of activity associated with a risk detection."
author: "tracyshi"
ms.localizationpriority: medium
ms.date: 12/02/2025
ms.subservice: "entra-sign-in"
doc_type: enumPageType
---

# activityType enum type

Namespace: microsoft.graph

Represents the type of activity associated with a risk detection. This enumeration is used by multiple resources.

The following table lists the members of an [evolvable enumeration](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations). Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `servicePrincipal`.

## Members

| Member | Description |
|:---|:---|
| signin | The risk is linked to a sign-in activity.<br/><br/>Applies to: **activity** property of [riskDetection](../resources/riskdetection.md) and [servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md) |
| user | The risk is linked to a user activity.<br/><br/>Applies to: **activity** property of [riskDetection](../resources/riskdetection.md) |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.<br/><br/>Applies to: **activity** property of [riskDetection](../resources/riskdetection.md) and [servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md)  |
| servicePrincipal | The risk is linked to a service principal activity.<br/><br/>Applies to: **activity** property of [riskDetection](../resources/riskdetection.md) and [servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md) |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.activityType"
}-->

```json
{
  "@odata.type": "#microsoft.graph.activityType"
}
```
