---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

Invoke-MgFilterIdentityGovernanceAppConsentRequestByCurrentUser -Filter "userConsentRequests/any(u:u/status eq 'InProgress')"  -On $onId 

```