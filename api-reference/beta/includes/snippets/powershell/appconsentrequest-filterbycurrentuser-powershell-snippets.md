---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

Invoke-MgBetaFilterIdentityGovernanceAppConsentRequestByCurrentUser -Filter "userConsentRequests/any(u:u/status eq 'InProgress')"  -On $onId 

```