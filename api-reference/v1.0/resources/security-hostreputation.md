---
title: "hostReputation resource type"
description: "Represents the reputation of a host based on a series of rules."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# hostReputation resource type

Namespace: microsoft.graph.security

[!INCLUDE [threatintelligence-api-disclaimer](../../includes/threatintelligence-api-disclaimer.md)]

Represents the reputation of a host based on a series of rules. This score helps users quickly understand any detected ties to malicious or suspicious infrastructure when validating the reputation of a known or unknown entity. The platform provides quick information about the activity of these entities (such as first and last seen timestamps or [autonomous system](../resources/security-autonomoussystem.md) details) and a list of rules that affect the reputation score when applicable.

Reputation data is important to understanding the trustworthiness of an attack surface and is also useful when assessing unknown [hostnames](../resources/security-hostname.md) or [IP addresses](../resources/security-ipaddress.md) that appear in investigations. These scores uncover any prior malicious or suspicious activity that affected the entity, or other known indicators of compromise to consider.

## Methods

| Method                                                       | Return type                                                                        | Description                                                                                                                                                                                                       |
| :----------------------------------------------------------- | :--------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [Get host reputation](../api/security-host-get-reputation.md) | [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) | Read the properties and relationships of a [microsoft.graph.security.hostReputation](../resources/security-hostreputation.md) object, for a given [microsoft.graph.security.host](../resources/security-host.md). |

## Properties

| Property       | Type                                                                                                  | Description                                                                                                                                                                |
| :------------- | :---------------------------------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| classification | microsoft.graph.security.hostReputationClassification                                                 | The calculated reputation of the host. The possible values are: `unknown`, `neutral`, `suspicious`, `malicious`, `unknownFutureValue`.                                     |
| id             | String                                                                                                | A system-generated ID for this **hostReputation**.                                                                                                                         |
| rules          | [microsoft.graph.security.hostReputationRule](../resources/security-hostreputationrule.md) collection | A collection of rules that have been used to calculate the classification and score.                                                                                       |
| score          | Int32                                                                                                 | The calculated score (0-100) of the requested host. A higher value indicates that this [host](../resources/security-host.md) is more likely to be suspicious or malicious. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.hostReputation",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.security.hostReputation",
  "classification": "String",
  "id": "String (identifier)",
  "rules": [
    {
      "@odata.type": "microsoft.graph.security.hostReputationRule"
    }
  ],
  "score": "Int32"
}
```
