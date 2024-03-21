---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.Governance

Invoke-MgFilterIdentityGovernanceAppConsentRequestUserConsentRequestByCurrentUser -AppConsentRequestId $appConsentRequestId -Filter " (status eq 'Completed')"  -On $onId 

```