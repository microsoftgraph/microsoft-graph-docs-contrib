# riskState enum type

 **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Reusable property that reflects the 'risk state' of a risky user, sign-in or a risk event. For e.g. active, remediated or dismissed.

## Members
|Member|Value|Description|
|:---|:---|:---|
|`none`|`0`|Risky user: The user is not at risk. Sign-in: The sign-in is not at risk. Risk event: The risk event is not at risk. |
|`confirmedSafe`|`1`|Sign-in: The sign-in was confirmed safe. Risk event: The sign-in associated with this risk event was confirmed safe.  |
|`remediated`|`2`|Risky user: The user’s risk is remediated. Sign-in: The sign-in’s risk is remediated. Risk event: The risk event is remediated. Admin either generated a temporary password or the user performed a secured password reset or the user performed a secured password change after this risk event was created.  |
|`dismissed`|`3`|Risky user: The user’s risk is dismissed. Sign-in: The sign-in’s risk is dismissed. Risk event: The risk event is dismissed. Either admin dismissed all risk for the user after this risk event was created or the AI deemed the sign-in safe.  |
|`atRisk`|`4`|Risky user: The user is at risk. Sign-in: The sign-in is at risk. Risk event: The risk event is active. |
|`confirmedCompromised`|`5`|Sign-in: The sign-in was confirmed compromised. Risk event: The sign-in associated with this risk event was confirmed compromised.  |
|`unknownFutureValue`|`6`|Unknown future value.   |