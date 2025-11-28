---
title: "riskDetail enum type"
description: "Represents the reason behind a specific state of a risky user, sign-in, service principal, or agent."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.date: 11/28/2025
ms.subservice: "entra-sign-in"
doc_type: enumPageType
---

# riskDetail enum type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the reason behind a specific state of a risky user, sign-in, service principal, or agent.

This enumeration is used by multiple resources. The possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`, `userChangedPasswordOnPremises`, `adminDismissedRiskForSignIn`, `adminConfirmedAccountSafe`, `adminConfirmedAgentSafe`, `adminConfirmedAgentCompromised`, `adminDismissedRiskForAgent`, `microsoftRevokedSessions`. Use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`, `m365DAdminDismissedDetection`, `userChangedPasswordOnPremises`, `adminDismissedRiskForSignIn`, `adminConfirmedAccountSafe`, `adminConfirmedAgentSafe`, `adminConfirmedAgentCompromised`, `adminDismissedRiskForAgent`, `microsoftRevokedSessions`.

## Members

| Member | Description |
|:---|:---|
| none | No details are available for the risk state.<br/><br/>Applies to:<ul><li>[agentRiskDetection](../resources/agentriskdetection.md)</li><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskServicePrincipalActivity](../resources/riskserviceprincipalactivity.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyAgent](../resources/riskyagent.md)</li><li>[riskyServicePrincipal](../resources/riskyserviceprincipal.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| adminGeneratedTemporaryPassword | An admin generated a temporary password for the user.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| userPerformedSecuredPasswordChange | The user performed a secure password change.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| userPerformedSecuredPasswordReset | The user performed a secure password reset.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| adminConfirmedSigninSafe | An admin confirmed the sign-in as safe.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| aiConfirmedSigninSafe | AI confirmed the sign-in as safe.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| userPassedMFADrivenByRiskBasedPolicy | The user passed multifactor authentication (MFA) driven by a risk-based policy.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| adminDismissedAllRiskForUser | An admin dismissed all risk for the user.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| adminConfirmedSigninCompromised | An admin confirmed the sign-in as compromised.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| hidden | The risk state is hidden.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskServicePrincipalActivity](../resources/riskserviceprincipalactivity.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyServicePrincipal](../resources/riskyserviceprincipal.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| adminConfirmedUserCompromised | An admin confirmed the user as compromised.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use.<br/><br/>Applies to:<ul><li>[agentRiskDetection](../resources/agentriskdetection.md)</li><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskServicePrincipalActivity](../resources/riskserviceprincipalactivity.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyAgent](../resources/riskyagent.md)</li><li>[riskyServicePrincipal](../resources/riskyserviceprincipal.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| adminConfirmedServicePrincipalCompromised | An admin confirmed the service principal as compromised.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskServicePrincipalActivity](../resources/riskserviceprincipalactivity.md)</li><li>[riskyServicePrincipal](../resources/riskyserviceprincipal.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| adminDismissedAllRiskForServicePrincipal | An admin dismissed all risk for the service principal.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskServicePrincipalActivity](../resources/riskserviceprincipalactivity.md)</li><li>[riskyServicePrincipal](../resources/riskyserviceprincipal.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[servicePrincipalRiskDetection](../resources/serviceprincipalriskdetection.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| m365DAdminDismissedDetection | A Microsoft Defender XDR admin dismissed the detection.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| userChangedPasswordOnPremises | The user changed their password on-premises.<br/><br/>Applies to:<ul><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| adminDismissedRiskForSignIn | An admin dismissed the risk for the sign-in.<br/><br/>Applies to:<ul><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| adminConfirmedAccountSafe | An admin confirmed the account as safe.<br/><br/>Applies to:<ul><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |
| adminConfirmedAgentSafe | An admin confirmed the agent as safe.<br/><br/>Applies to:<ul><li>[agentRiskDetection](../resources/agentriskdetection.md)</li><li>[riskyAgent](../resources/riskyagent.md)</li></ul> |
| adminConfirmedAgentCompromised | An admin confirmed the agent as compromised.<br/><br/>Applies to:<ul><li>[agentRiskDetection](../resources/agentriskdetection.md)</li><li>[riskyAgent](../resources/riskyagent.md)</li></ul> |
| adminDismissedRiskForAgent | An admin dismissed the risk for the agent.<br/><br/>Applies to:<ul><li>[agentRiskDetection](../resources/agentriskdetection.md)</li><li>[riskyAgent](../resources/riskyagent.md)</li></ul> |
| microsoftRevokedSessions | Microsoft revoked the user's sessions.<br/><br/>Applies to:<ul><li>[riskDetection](../resources/riskdetection.md)</li><li>[riskUserActivity](../resources/riskuseractivity.md)</li><li>[riskyUser](../resources/riskyuser.md)</li><li>[signIn](../resources/signin.md)</li></ul> |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.riskDetail"
}-->

```json
{
  "@odata.type": "#microsoft.graph.riskDetail"
}
```