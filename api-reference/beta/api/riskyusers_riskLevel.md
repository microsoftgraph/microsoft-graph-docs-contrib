# riskLevel enum type

 **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Reusable property that reflects 'how risky' is a risky user, sign-in or a risk event. For e.g. high, medium or low.

## Members
|Member|Value|Description|
|:---|:---|:---|
|`none`|`0`|Risky user: The given user is no longer at risk. Sign-in: The sign-in is not at risk. Risk event: The risk event is no longer at risk.  |
|`low`|`1`|Risky user: There is a low probability that the identity of the given user is compromised. Sign-in: There is a low probability that this sign-in was compromised. Risk event: The event has a low risk level.  |
|`medium`|`2`|Risky user: There is a medium probability that the identity of the given user is compromised. Sign-in: There is a medium probability that this sign-in was compromised.Risk event: The event has a medium risk level. |
|`high`|`3`|Risky user: There is a high probability that the identity of the given user is compromised. Sign-in: There is a high probability that this sign-in was compromised. Risk event: The event has a high risk level.  |
|`hidden`|`4`|Risky user: The at risk user is not enabled for Identity Protection. Sign-in: The at risk sign-in was not enabled for Identity Protection.  |
|`unknownFutureValue`|`5`|Unknown future value.   |