---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.Governance

Invoke-MgBetaFilterIdentityGovernanceAccessReviewDefinitionInstanceDecisionByCurrentUser -AccessReviewScheduleDefinitionId $accessReviewScheduleDefinitionId -AccessReviewInstanceId $accessReviewInstanceId -Apply "groupby((resource/id, resource/displayName))"  -On $onId 

```