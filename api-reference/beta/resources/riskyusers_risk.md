# risk resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Aggregates the the risk level, risk state and risk detail for the risky user, sign-in or risk event.

## Properties

|Property|Type|Description|
|-|-|-|-|-|
|`stateDetail`|[riskDetail](../api/riskyusers_riskdetail.md)|Provides the 'reason' behind a specific state of a risky user, sign-in or a risk event|
|`riskLevelAggregated`|[riskLevel](../api/riskyusers_riskLevel.md)|Provides the overall risk level of a risky user, sign-in or a risk event|
|`riskLevelDuringSignIn`|[riskLevel](../api/riskyusers_riskLevel.md)|Provides the risk level of a sign-in during the sign-in (i.e. based on the real-time risk events) |
|`state`|[riskState](../api/riskyusers_riskstate.md)|Provides the 'risk state' of a risky user, sign-in or a risk event |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.identityRiskEvent"
}-->

```json
{
    "stateDetail":  {"@odata.type": "microsoft.graph.riskDetail"},
    "riskLevelAggregated":  {"@odata.type": "microsoft.graph.riskLevel"},
    "riskLevelDuringSignIn":  {"@odata.type": "microsoft.graph.riskLevel"},
    "state":  {"@odata.type": "microsoft.graph.riskState"}
  }
  ```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "identityRiskEvent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->