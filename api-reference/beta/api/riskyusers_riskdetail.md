# riskDetail enum type

 **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Reusable property that reflects the 'reason' behind a specific state of a risky user, sign-in or a risk event

## Members

|Member|Value|Description|
|:---|:---|:---|
|`none`|`0`|Risky user: No action has been performed on the user so far. Sign-in: No action has been performed on the sign-in so far. Risk event: The risk event is currently active and no action has been performed on it so far. |
|`adminGeneratedTemporaryPassword`|`1`|Risky user: Admin generated temporary password for the user. Sign-in: Admin generated temporary password after this sign-in. Risk event: Admin generated temporary password after this risk event was created.   |
|`userPerformedSecuredPasswordChange`|`2`|Risky user: User performed secured password change.  Sign-in: User performed secured password change after this sign-in. Risk event: User performed secured password change after this risk event was created.   |
|`userPerformedSecuredPasswordReset`|`3`|Risky user: User performed secured password reset.  Sign-in: User performed secured password reset after this sign-in. Risk event: User performed secured password reset after this risk event was created.   |
|`adminConfirmedSigninSafe`|`4`|Sign-in: Admin confirmed the sign-in was safe. Risk event: Admin confirmed the sign-in associated with this risk event was safe.   |
|`aiConfirmedSigninSafe`|`5`|Sign-in: AI confirmed the sign-in was safe. Risk event: AI confirmed the sign-in associated with this risk event was safe.   |
|`userPassedMFADrivenByRiskBasedPolicy`|`6`|Sign-in: User passed MFA driven by risk-based policy during this sign-in. Risk event: User passed MFA driven by risk-based policy during the sign-in associated with this risk event.  |
|`adminDismissedAllRiskForUser`|`7`|Risky user: Admin dismissed all risk for the user.  Sign-in: Admin dismissed all risk for the user after this sign-in. Risk event: Admin dismissed all risk for the user after this risk event was created.  |
|`adminConfirmedSigninCompromised`|`8`|Sign-in: Admin confirmed the sign-in was compromised. Risk event: Admin confirmed the sign-in associated with this risk event was compromised.   |
|`unknownFutureValue`|`9`|Unknown future value.   |
